with inheritance_child;
use inheritance_child;
with inheritance_parent;
use inheritance_parent;
procedure Main is
	c : inheritance_child.Child;
	pc : inheritance_parent.Parent'Class := c;
begin
	test(pc);
end;

