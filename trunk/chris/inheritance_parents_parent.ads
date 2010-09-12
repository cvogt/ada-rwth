with Ada.Text_IO; use Ada.Text_IO;
package inheritance_parents_parent is
	type Parents_Parent is tagged null record;
	procedure test( b:Parents_Parent );
end;
