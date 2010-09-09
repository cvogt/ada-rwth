WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE PointerToInt IS
   TYPE Int_Zeiger IS ACCESS Integer;
   meinPointer:Int_Zeiger;
   BEGIN
      MeinPointer:= NEW Integer;
      MeinPointer.all:=9;
      put(MeinPointer.all);
    null;
end PointerToInt;
