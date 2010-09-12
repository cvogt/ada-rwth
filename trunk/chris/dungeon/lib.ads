with SYSTEM;
package lib is
	package UnitTest is
		procedure fail( s:STRING := "" );
		procedure assert( b:BOOLEAN; s:STRING := "" );
		Failed : exception;
	end;
end lib;
