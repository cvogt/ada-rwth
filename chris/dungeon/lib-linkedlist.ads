generic
	type Value is private;
package lib.LinkedList is
	procedure add( v:Value );
	function get( i:INTEGER ) return Value;
	function length return INTEGER;
end;

