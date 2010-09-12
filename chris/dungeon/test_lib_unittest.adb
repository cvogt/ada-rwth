with lib.unittest; use lib.unittest;
procedure test_lib_unittest is
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

