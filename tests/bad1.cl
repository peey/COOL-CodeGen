-- Dynamic dispatch chooses a method based on the dynamic type of the
-- dispatching object.


class Base inherits IO
{
  identify() : Object
  {
    out_string( "base\n" )
  };
};


class Derived1 inherits Base
{
  identify() : Object
  {
    out_string( "derived1\n" )
  };
};

class Derived2 inherits Base
{
  identify() : Object
  {
    out_string( "derived2\n" )
  };
};


class Main
{
  main() : Object
  {
    {
      let me : Derived1 <- new Derived1 in
		me@Base.identify();
    }
  };
};
