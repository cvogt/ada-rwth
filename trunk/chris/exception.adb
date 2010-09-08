with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	var : INTEGER;
	some_exception : exception;
begin
	raise some_exception;
	exception
		when some_exception => put("some_exceptsadasdion");
	raise some_exception;
	put("test");
	
end;

