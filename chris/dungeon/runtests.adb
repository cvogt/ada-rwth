with Ada.Text_IO; use Ada.Text_IO;

with test_lib_unittest;
with test_lib_linkedlist;
with test_lib_linkedlist_adt;

procedure runtests is begin
	new_line;
	put("Running Tests: ");




	test_lib_unittest;
	put(".");
	test_lib_linkedlist;
	put(".");
	test_lib_linkedlist_adt;
	put(".");




	put(" SUCCESS!");
	new_line;
	new_line;
end;
