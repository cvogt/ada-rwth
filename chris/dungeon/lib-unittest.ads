package lib.UnitTest is
	suppress_messages : BOOLEAN := False;
	procedure fail( s:STRING := "" );
	procedure assert( b:BOOLEAN; s:STRING := "" );
	Failed : exception;
end;
