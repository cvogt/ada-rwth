with lib; use lib.unittest;
procedure test is
	package int_list is new lib.linkedlist( INTEGER );
	use int_list;
	l : List;
begin
	int_list.create(l);
		
	assert( length(l)=0, "initial list length" );
	add(l, 5);
	assert( length(l)=1, "length after adding one element" );
	assert( get(l,1)=5, "get first element" );
	add(l, 6);
	add(l, 7);
	add(l, 1);
	assert( length(l)=4, "length after adding more elements" );
	assert( get(l,3)=7, "get element 3" );
	assert( get(l,1)=5, "get element 1" );
	assert( get(l,4)=1, "get element 4" );
	assert( get(l,2)=6, "get element 2" );
	
end;
