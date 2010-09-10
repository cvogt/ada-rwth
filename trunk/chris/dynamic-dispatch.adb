with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	package inherit is
		type Parent is tagged record
			x : INTEGER;
		end record;
		procedure dispatcher( l: in Parent );
		procedure p( l : in Parent );
		type Child is new Parent with record
			y : INTEGER;
		end record;
		procedure p( l : in Child );
	end;
	package body inherit is
		procedure dispatcher( l : in Parent ) is begin
			p( Parent'Class(l) );	
		end;
		procedure p( l : in Parent ) is begin
			put("Parent");new_line;
		end;
		procedure p( l : in Child ) is begin
			put("Child");new_line;
		end;
	end;
	use inherit;
	c: Child := (1,2);
	p: Parent := Parent(c);
	pc: Parent'Class := Parent(c);
begin
	dispatcher(c);
	dispatcher(p);
	dispatcher(pc);
end;
