with ada.text_io;
use ada.text_io;
procedure tasks is
	task a;
	task body a is begin
		for i in 1..100 loop
			put("a");
		end loop;
	end a;
	task b;
	task body b is begin
		for i in 1..100 loop
			put("b");
		end loop;
	end b;
	task c;
	task body c is begin
		for i in 1..100 loop
			put("c");
		end loop;
	end c;
begin null; end tasks;
