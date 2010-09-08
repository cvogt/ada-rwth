with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	var : INTEGER;
	function test(A:Integer) return Integer is
	begin
		while A/=5 loop
			return 5;
		end loop;
	end;
begin
	put( test(6), 1);
end;

