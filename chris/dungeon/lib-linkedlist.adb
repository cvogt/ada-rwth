package body lib.LinkedList is
	type TElement;
	type PElement is access TElement;
	type TElement is record
		next : PElement;
		val : Value;
	end record;
	OutOfBound : exception;
	-- head is implemented as a TElement
	-- so there is always one empty TElement
	-- in the list which is used as head, but
	-- does not count as a real element
	len : INTEGER := 0;
	head : PElement := new TElement;
	last : PElement := head;
	procedure add( v:Value ) is
		e : PElement := new TElement;
	begin
		e.val := v;
		last.next := e;
		last := e;
		len := length+1;
	end;
	function get( i:INTEGER ) return Value is
		current : PElement;
	begin
		current := head;
		for j in 1..len loop
			current := current.next;
			if i = j then
				return current.val;
			end if;
		end loop;
		raise OutOfBound;
	end;
	function length return INTEGER is begin
		return len;
	end;
end;
