with Ada.Text_IO; use Ada.Text_IO;
separate(lib)
package body unittest is
	procedure fail( s:STRING := "" ) is begin
		new_line;
		put("FAILED");
		if s /= "" then
			put(": ");
			put(s);
		end if;
		raise Failed;
	end;
	procedure assert( b:BOOLEAN; s:STRING := "" ) is begin
		if not b then
			fail(s);
		end if;
	end;
end;
