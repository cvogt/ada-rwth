with Ada.Text_IO; use Ada.Text_IO;
with inheritance_parents_parent;
package inheritance_parent is
	type Parent is new inheritance_parents_parent.Parents_Parent with null record;
end;
