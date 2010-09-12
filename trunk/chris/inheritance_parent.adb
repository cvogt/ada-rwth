with Ada.Text_IO; use Ada.Text_IO;
package body inheritance_parent is
	procedure test( b:Parent ) is begin
		put("Parent");
	end;
end;
