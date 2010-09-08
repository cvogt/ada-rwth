with ada.integer_text_io;
use ada.integer_text_io;
procedure switch is
	x : constant INTEGER := 5; 
begin
	case 5 is
		when  x => put(5,1);
		when 6 => null;
		when others => null;
	end case;	
end;
