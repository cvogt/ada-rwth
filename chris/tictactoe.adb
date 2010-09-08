with Ada.Text_IO, Ada.Integer_Text_IO;
procedure TicTacToe is
	F11, F12, F13,
	F21, F22, F23,
	F31, F32, F33 : INTEGER;
	procedure print is 
	begin
		ada.text_io.put("Aktuelles Spielfeld:");
		ada.text_io.new_line;
		ada.integer_text_io.put(F11,1);
		ada.integer_text_io.put(F12,1);
		ada.integer_text_io.put(F13,1);
		ada.text_io.new_line;
		ada.integer_text_io.put(F21,1);
		ada.integer_text_io.put(F22,1);
		ada.integer_text_io.put(F23,1);
		ada.text_io.new_line;
		ada.integer_text_io.put(F31,1);
		ada.integer_text_io.put(F32,1);
		ada.integer_text_io.put(F33,1);
		ada.text_io.new_line;
		ada.text_io.new_line;
	end;
	PlayerID, Choice, Winner : INTEGER;
	procedure switch_player is
	begin
		if PlayerID = 1 then
			PlayerID := 2;
		else PlayerID := 1;
		end if;
	end;
	procedure update_field( Field : in out INTEGER; FieldNum : in INTEGER ) is
	begin
		if Choice = FieldNum then
			if Field = 0 then
				Field := PlayerID;
				switch_player;
			else
				ada.text_io.put("!!! Field already taken!");
				ada.text_io.new_line;
				ada.text_io.put("!!! Please choose a different Field.");
				ada.text_io.new_line;
				ada.text_io.new_line;
			end if;
		end if;
	end;
	procedure check_win( Winner : in out INTEGER ) is
	begin
		   if( not(F11 = 0) and F11 = F21 and F21 = F31 ) then
			Winner := F11;
		elsif( not(F12 = 0) and F12 = F22 and F22 = F32 ) then
			Winner := F12;
		elsif( not(F13 = 0) and F13 = F23 and F23 = F33 ) then
			Winner := F13;
		elsif( not(F11 = 0) and F11 = F12 and F12 = F13 ) then
			Winner := F11;
		elsif( not(F21 = 0) and F21 = F22 and F22 = F23 ) then
			Winner := F21;
		elsif( not(F31 = 0) and F31 = F32 and F32 = F33 ) then
			Winner := F31;
		elsif( not(F11 = 0) and F11 = F22 and F22 = F33 ) then
			Winner := F11;
		elsif( not(F13 = 0) and F13 = F22 and F22 = F31 ) then
			Winner := F13;
		end if;
	end;
begin
	Winner := 0;
	PlayerID := 1;
	F11 := 0;
	F12 := 0;
	F13 := 0;
	F21 := 0;
	F22 := 0;
	F23 := 0;
	F31 := 0;
	F32 := 0;
	F33 := 0;
	print;
	while Winner = 0 loop
		ada.text_io.put("Player ");
		ada.integer_text_io.put(PlayerID,1);
		ada.text_io.put(", please choose a field: ");
		ada.integer_text_io.Get(Choice);
		ada.text_io.new_line;
		update_field( F11, 11 );
		update_field( F12, 12 );
		update_field( F13, 13 );
		update_field( F21, 21 );
		update_field( F22, 22 );
		update_field( F23, 23 );
		update_field( F31, 31 );
		update_field( F32, 32 );
		update_field( F33, 33 );
		print;
		check_win(Winner);
	end loop;
	ada.text_io.new_line;
	ada.text_io.new_line;
	ada.text_io.put("And the winner is ... Player ");
	ada.integer_text_io.put(Winner,1);
	ada.text_io.new_line;
end;

