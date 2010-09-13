with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	var : INTEGER;
begin
	select delay 5.0;
		put("Ha! Too slow, I have chosen 5!");
	then abort
		put("Please enter a number: ");
		get(var);
	end select;
end;

