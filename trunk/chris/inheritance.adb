with inheritance_child;
with inheritance_dispatch;
procedure Main is
	c : inheritance_child.Child;
begin
	inheritance_dispatch(c);
end;

