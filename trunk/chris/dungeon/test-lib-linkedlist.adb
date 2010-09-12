with lib.linkedlist; with lib.unittest; use lib.unittest;
procedure test is
	package list is new lib.linkedlist( INTEGER );
	use list;
begin
	assert( length=0, "initial list length" );
	add(5);
	assert( length=1, "length after adding one element" );
	assert( get(1)=5, "get first element" );
	add(6);
	add(7);
	add(1);
	assert( length=4, "length after adding more elements" );
	assert( get(3)=7, "get element 3" );
	assert( get(1)=5, "get element 1" );
	assert( get(4)=1, "get element 4" );
	assert( get(2)=6, "get element 2" );
	
end;
