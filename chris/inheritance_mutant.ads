with Ada.Text_IO; use Ada.Text_IO;
with inheritance_parent;
use inheritance_parent;
package inheritance_mutant is
	type Mutant is new Parent with null record;
	procedure test( b:Mutant );
end;
