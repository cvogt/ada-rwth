with ada.text_io, ada.integer_text_io;
use ada.text_io, ada.integer_text_io;
procedure main is
	package ADT is
		-- this ADT uses pointer semantics this means the opaque type ADT is a pointer type (which is not visible to the outside)
		-- however the type State it points to is not opaque, which prevents external viewers to create new instances of State
		-- so for external users, new instances can only be created by calling create() which successfully enforces an initialization routine
		type ADT is limited private;
		function create return ADT;
		function get(this:ADT) return INTEGER;
	private
		function init return INTEGER;
		type State is record
			x : INTEGER := 5;
		end record;
		type ADT is access State;
	end;
	package body ADT is
		function init return INTEGER is begin
			return 5;
		end; 
		function get( this:ADT ) return INTEGER is begin
			return this.x;
		end;
		function create return ADT is begin
			return new State;
		end;
	end;
	--ao : ADT.ADT := new ADT.ADT; -- <- leads to error at initialization already, cannot assign pointer to type ADT to var of type ADT (not Pointer-to-ADT)
	ap : ADT.ADT := ADT.create; -- <- works
	aq : ADT.ADT; -- <- leads to error when passed to ADT.get, because it is tried to dereference this uninitialized pointer
	var : INTEGER;
begin
	var := 1;
	put(ADT.get( ap ));
end;

