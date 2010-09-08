with ada.integer_text_io;
use ada.integer_text_io;
procedure switch is
	x : INTEGER := 5; 
begin
	if x in 1..1000000 then
		put(5,1);
	elsif x in 1000001..100000000 then null;
	else null;
	end if;	
end;
