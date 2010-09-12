with SYSTEM;
package lib is
	generic
		type Value is private;
	package LinkedList is
		type List is private;
		procedure create( l:in out List );
		procedure add( l:List; v:Value );
		function get( l:List; i:INTEGER ) return Value;
		function length( l:List ) return INTEGER;
	private
		type TElement;
		type PElement is access TElement;
		type TElement is record
			next : PElement;
			val : Value;
		end record;
		type TList is record
			head : PElement;
			last : PElement;
			length : INTEGER := 0;
		end record;
		type List is access TList;
	end;
	package UnitTest is
		procedure fail( s:STRING := "" );
		procedure assert( b:BOOLEAN; s:STRING := "" );
		Failed : exception;
	end;
end lib;
