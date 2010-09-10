with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	package dispatch is
		type Parent is tagged null record;
		procedure inheritance_dispatch( l: in Parent );
		procedure dynamic_dispatch( l : in Parent );
		type Child is new Parent with null record;
		procedure dynamic_dispatch( l : in Child );
	end;
	package body dispatch is
		procedure inheritance_dispatch( l : in Parent ) is begin
			put("Parent.inheritance_dispatch()"); new_line;
		end;
		procedure dynamic_dispatch( l : in Parent ) is begin
			put("Parent.dynamic_dispatch()");new_line;
		end;
		procedure dynamic_dispatch( l : in Child ) is begin
			put("Child.dynamic_dispatch()");new_line;
		end;
	end;
	use dispatch;
	c: Child;
begin
	put("example for inheritance dispatch");new_line;new_line;

	put("inheritance_dispatch( c ):               ");
	inheritance_dispatch(c);
	put("inheritance_dispatch( Parent(c) ):       ");
	inheritance_dispatch(Parent(c));
	put("inheritance_dispatch( Parent'Class(c) ): ");
	inheritance_dispatch(Parent'Class(c));

	new_line;new_line;

	put("example for dynamic dispatch");new_line;new_line;
	put("dynamic_dispatch( c               ): ");
	dynamic_dispatch(c);
	put("dynamic_dispatch( Parent(c)       ): ");
	dynamic_dispatch( Parent(c) );
	put("dynamic_dispatch( Parent'Class(c) ): ");
	dynamic_dispatch( Parent'Class(c) );
end;
