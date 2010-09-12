package body lib.LinkedList_ADT is
	OutOfBound : exception;
	procedure create ( l:in out List) is
		-- head is implemented as a TElement
		-- so there is always one empty TElement
		-- in the list which is used as head, but
		-- does not count as a real element
		head : PElement := new TElement;
	begin
		l    := new TList'(
			head => head,
			last => head,
			length => 0
		);
	end;
	procedure add( l:List; v:Value ) is
		e : PElement := new TElement;
	begin
		e.val := v;
		l.last.next := e;
		l.last := e;
		l.length := l.length+1;
	end;
	function get( l:List; i:INTEGER ) return Value is
		current : PElement;
	begin
		current := l.head;
		for j in 1..l.length loop
			current := current.next;
			if i = j then
				return current.val;
			end if;
		end loop;
		raise OutOfBound;
	end;
	function length( l:List ) return INTEGER is begin
		return l.length;
	end;
end;
