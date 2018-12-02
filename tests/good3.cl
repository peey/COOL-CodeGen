-- Dynamic dispatch chooses a method based on the dynamic type of the
-- dispatching object.


class Base inherits IO
{
  identify() : Object
  {
    out_string( "base\n" )
  };
};


class Derived inherits Base
{
  identify() : Object
  {
    out_string( "derived\n" )
  };
};

class Derived1 inherits Derived
{
  identify() : Object
  {
    out_string( "derived1\n" )
  };
};


class Main
{
  main() : Object
  {
    {

      let me : Base <- new Derived1 in
		me@Derived.identify();
    }
  };
};
