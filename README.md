## Design choices:

 1. We're using the stack to manage temporaries.
 2. The Stack layout is [RETURN | SELF | CONTROL_LINK | ARGS | LOCALS ] where locals are introduced by either the let or the case statements. We have to store the SELF object on the stack since it can change on dispatch.
 3. All the arguments are passed via stack in order, they're available just below the called function's frame pointer. The called function copies these arguments onto its own frame. 
 4. Object layout is [TAG | SIZE | DISPATCH POINTER | ATTRIBUTES ]. The init recursively initializes all the attributes of an object, and all attributes within them, in an ancestor-first order
 5. Object attributes are stored in ancestor-first order to make dispatch easier
 6. We produce an enumerated table of which type is a subtype of another for runtime type checking with case
