with ada.text_io, ada.integer_text_io;
procedure test is
	integer : STRING;
begin
	integer := "5";
	ada.text_io.put("test123");
	ada.text_io.put( integer );
end;
