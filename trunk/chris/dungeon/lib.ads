with SYSTEM;
package lib is
	generic
		type Value is private;
	package LinkedList is
		procedure add( v:Value );
		function get( i:INTEGER ) return Value;
		function length return INTEGER;
	end;
	package UnitTest is
		procedure fail( s:STRING := "" );
		procedure assert( b:BOOLEAN; s:STRING := "" );
		Failed : exception;
	end;
end lib;
