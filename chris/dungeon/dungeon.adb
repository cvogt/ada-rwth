with ada.text_io, ada.integer_text_io;
with Ada.Numerics.Discrete_Random;
with msgs;
use ada.text_io, ada.integer_text_io;
procedure dungeon is
	package navigator is
		type direction is (up,down,left,right);
		procedure move( d : direction );
		procedure init( start_visible : BOOLEAN := True );
	end;
	package body navigator is
		package Random_Bool is new Ada.Numerics.Discrete_Random(BOOLEAN);
		bool_gen : Random_Bool.Generator;
		package direction_io is new ada.text_io.enumeration_io(direction);
		use direction_io;
		width, height : INTEGER := 10;
		type doors is record
			south : BOOLEAN := True;
			east : BOOLEAN := True;
			visited : BOOLEAN := True;
		end record;
		type map_type is array(1..width,INTEGER range 1..height) of doors;
		map : map_type;
		type position is record
			vertical : INTEGER range 1..width;
			horizontal : INTEGER range 1..height;
		end record;
		current : position := (1,1);
		procedure randomize_doors is begin
			random_bool.reset(bool_gen);
			for i in 1..(map'Last(1)) loop
				for j in 1..(map'Last(2)) loop
					map(i,j).south := random_bool.random(bool_gen);
					map(i,j).east  := random_bool.random(bool_gen);
				end loop;
			end loop;
					
		end;
		procedure display is
			procedure draw_line is begin
				for i in 1..(map'Last(2)) loop
					put("+-----");	
				end loop;
				put("+");	
				new_line;
			end;
		begin
			map(current.vertical,current.horizontal).visited := True;
			
			for i in 1..80 loop
				new_line;
			end loop;
			put_line("You can walk with keys w,a,s,d");
			put("You are here: (");
			put( current.vertical, 1 );
			put( "," );
			put( current.horizontal, 1 );
			put_line(")");
			draw_line;	
			for i in 1..(map'Last(1)) loop
				put("|");
				for j in 1..(map'Last(2)) loop
					if( current.vertical = i and current.horizontal = j ) then
						put("  X");	
					else
						put("   ");
					end if;
					if( map(i,j).east or not map(i,j).visited ) then
						put("   ");
					else
						put("  |");
					end if;
				end loop;
				new_line;
				put("+");
				for j in 1..(map'Last(2)) loop
					if map(i,j).south or not map(i,j).visited then
						put("     +");
					else
						put("-----+");
					end if;
				end loop;
				new_line;
			end loop;
		end;
		procedure init( start_visible : BOOLEAN := True ) is begin
			randomize_doors;
			display;
		end;	
		procedure move( d : direction ) is
			Wall : exception;
		begin
			begin
				if( d = up
				    and then current.vertical>1
				    and then map(current.vertical-1,current.horizontal).south
                                ) then
					current.vertical := current.vertical-1;
				elsif( d = down
				       and then current.vertical<width
				       and then map(current.vertical,current.horizontal).south
				) then
					current.vertical := current.vertical+1;	
				elsif( d = left
				       and then current.horizontal>1
				       and then map(current.vertical,current.horizontal-1).east
				) then
					current.horizontal := current.horizontal-1;
				elsif( d = right
				       and then current.horizontal<height
				       and then map(current.vertical,current.horizontal).east
				) then
					current.horizontal := current.horizontal+1;
				else					
					raise Wall;
				end if;
				exception
					when Wall => put("You cannot walk ");put(d);new_line;
			end;
			display;
		end;
	end;
	type arrow is (w,a,s,d);
	package arrow_io is new enumeration_io(arrow);
	use arrow_io;
	x : CHARACTER;
	Quit, Dead, Win : exception;
	procedure menu is begin
		while(true) loop
			put_line("Main menu:");
			put_line("q: quit");
			put_line("t: die");
			put_line("w: win");
			put_line("b: back");
			get_immediate(x);
			case x is
				when 'q' => raise Quit;
				when 't' => raise Dead;
				when 'w' => raise Win;
				when 'b' => exit;
				when others => put("Ungültige Eingabe '");put(x);put_line("'!"); new_line;
			end case;
		end loop;
	end;
begin
	put_line("Welcome to the evil dungeon, har har");
	put_line("");
	navigator.init;
	while(true) loop
		get_immediate(x);
		case x is
			when 'w' => navigator.move( navigator.up );
			when 'a' => navigator.move( navigator.left );
			when 's' => navigator.move( navigator.down );
			when 'd' => navigator.move( navigator.right );
			when 'h' => null;
			when 'm' => menu;
			when others => null;
		end case;
	end loop;
	exception
		when Dead => put_line(msgs.tot);
		when Quit => put_line("Good bye");
		when Win => put_line("Congratulations, you made it out of the dungeon. Now you can do something else. Sort your socks alphabetically, paint your ceiling pink, make a voodoo doll of your neighbour");
		when others => raise;
end;

