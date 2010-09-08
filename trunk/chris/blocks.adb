with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	var : INTEGER := 4;
begin
	put("test");
	InnerBlock:
	declare
		var : INTEGER;
	begin 
		put("test");
		put( main.var, 5);
	end;	
end;

