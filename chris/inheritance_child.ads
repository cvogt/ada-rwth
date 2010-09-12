with Ada.Text_IO; use Ada.Text_IO;
with inheritance_mutant;
use inheritance_mutant;
package inheritance_child is
	type Child is new Mutant with null record;
end;
