with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	type Feld is array (INTEGER range <>) of INTEGER;
	var : INTEGER;
	type r is record
		f : Feld(1..3) := (1,2,3);
		x : INTEGER;
	end record;
	r1 :r;
begin
	var := 1;
end;

