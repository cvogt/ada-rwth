with inheritance_parent;
procedure inheritance_dispatch( pc : inheritance_parent.Parent'Class ) is begin
	inheritance_parent.test(pc);
end;

