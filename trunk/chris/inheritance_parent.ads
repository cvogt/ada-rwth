with Ada.Text_IO; use Ada.Text_IO;
package inheritance_parent is
	type Parent is tagged null record;
	procedure test( b:Parent );
end;
