#include<stdint.h>
#include <map>
#include <list>
#include <vector>
#include <algorithm>
#include <assert.h>
#include <stdio.h>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"

enum Basicness     {Basic, NotBasic};
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;

class CgenNode;
typedef CgenNode *CgenNodeP;

class method_class;

// Q. What is a class table?
// Ans. It is a global table which stores each class
class CgenClassTable : public SymbolTable<Symbol,CgenNode> {
private:
   List<CgenNode> *nds;
   ostream& str;
   int stringclasstag;
   int intclasstag;
   int boolclasstag;
public:
   // added members
   int availableclasstag;


// The following methods emit code for
// constants and global declarations.

   void code_global_data();
   void code_global_text();
   void code_bools(int);
   void code_select_gc();
   void code_constants();

// Added functions
   void emit_class_nameTab();
   void emit_class_protobj(CgenNodeP, int);
   bool check_symbol(Symbol);
   void print_protObj(CgenNodeP);
   void rec_protObj(CgenNodeP, ostream&);
   CgenNodeP get_node_from_tag(int tag);
   void initializers_code();
   void dispatch_tables();
   void the_class_methods();
   void runtime_type_check();

// The following creates an inheritance graph from
// a list of classes.  The graph is implemented as
// a tree of `CgenNode', and class names are placed
// in the base class symbol table.

   void install_basic_classes();
   void install_class(CgenNodeP nd);
   void install_classes(Classes cs);
   void build_inheritance_tree();
   void set_relations(CgenNodeP nd);
public:
   CgenClassTable(Classes, ostream& str);
   void code();
   CgenNodeP root();
};

// this just stores class heirarchy information?
// that's useless except for method dispatch
class CgenNode : public class__class {
public:
   CgenNodeP parentnd;                        // Parent of class
   List<CgenNode> *children;                  // Children of class
   Basicness basic_status;                    // `Basic' if class is basic, `NotBasic' otherwise

  // added

   int assigned_tag;
   std::vector<Symbol> attr_list;
   std::vector<Symbol> attr_type;
   std::vector<Symbol> own_methods;
   std::vector<Symbol> dispatch_order; // dispatch order of functions of self
   int dispatch_offset;

   SymbolTable<Symbol, int> *symbol_table = new SymbolTable<Symbol, int>;
   int locals = 0;
   method_class* current_method = NULL;
   CgenClassTableP class_table;

public:
   CgenNode(Class_ c,
            Basicness bstatus,
            CgenClassTableP class_table);

   void add_child(CgenNodeP child);
   List<CgenNode> *get_children() { return children; }
   void set_parentnd(CgenNodeP p);
   CgenNodeP get_parentnd() { return parentnd; }
   int basic() { return (basic_status == Basic); }
   void assign_tag(int t) {assigned_tag = t;}
   void print_vector(CgenNodeP node);
   int get_method_offset(Symbol method);
   int get_attribute_offset(Symbol attribute) {
     // type casting ptrdiff to int here should be safe since we'll deal with a small number of attrs...
     intptr_t pt = find(attr_list.begin(), attr_list.end(), attribute) - attr_list.begin();
     return DEFAULT_OBJFIELDS + (int) pt;
   }
   Symbol get_method_defining_class(Symbol method);
   void print_dispatch_table(ostream& s, CgenNodeP original_node);
   int allocate_local(Symbol name); // returns offset as well as stores it in the symbol table
   int allocate_param(Symbol name, int i); // returns offset as well as stores it in the symbol table
   CgenNodeP probes(Symbol name); 
};


// do I need to define corresponding classes for other constants?
class BoolConst
{
 private:
  int val;
 public:
  BoolConst(int);
  void code_def(ostream&, int boolclasstag);
  void code_ref(ostream&) const;
};
