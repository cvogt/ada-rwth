with ada.text_io, ada.integer_text_io;
procedure test is
	integer : INTEGER;
begin
	integer := 5;
	ada.text_io.put("test123");
	ada.integer_text_io.put( integer, 3 );
end;
