WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE PointerToInt IS
   TYPE Int_Zeiger IS ACCESS Integer range 0..10;
   MeinPointer:Int_Zeiger;
   ZweiterPointer: access Integer; --wenig hilfreich
   BEGIN
      MeinPointer:= NEW Integer'(4);
      ZweiterPointer := new Integer'(2);
      --MeinPointer.all:=0;
      Put(MeinPointer.All);
      Put(ZweiterPointer.All);
      MeinPointer.all:=ZweiterPointer.all;
    null;
end PointerToInt;
