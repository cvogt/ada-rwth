with lib; use lib.unittest;
procedure test is
	Broken : exception;
begin
	assert( True );
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

