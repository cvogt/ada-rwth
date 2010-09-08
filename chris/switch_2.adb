with ada.integer_text_io;
use ada.integer_text_io;
procedure switch is
	x : INTEGER := 5; 
begin
	case x is
		when 1..1000000 => put(5,1);
		when 1000001..100000000 => null;
		when others => null;
	end case;	
end;
