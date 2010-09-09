WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE RiesenInt IS

   TYPE Uint_256 IS RANGE 0..Integer'Last-Integer'First;
   uintVar: Uint_256 :=Uint_256(Integer'Last);
   BEGIN
      UintVar:=UintVar*2;


      Put(Integer((uintVar)/(Uint_256(Integer'Last))));

    null;
end RiesenInt;
