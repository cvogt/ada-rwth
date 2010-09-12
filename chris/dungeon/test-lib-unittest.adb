with lib.unittest; use lib.unittest;
procedure test is
	Broken : exception;
begin
	assert( True );
	suppress_messages := True;
	begin
		fail;
		raise Broken;
		exception
			when Failed => null;
	end;
	begin
		assert( False );
		raise Broken;
		exception
			when Failed => null;
	end;
end;

