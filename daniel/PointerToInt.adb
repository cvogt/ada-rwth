WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE PointerToInt IS
   TYPE Int_Zeiger  IS access constant Integer;
   myVar2: aliased constant integer :=Integer'(100);
   MeinPointer: Int_Zeiger := new Integer'(2);

   BEGIN

      MeinPointer := MyVar2'access;

      Put(MeinPointer.All);

    null;
end PointerToInt;
