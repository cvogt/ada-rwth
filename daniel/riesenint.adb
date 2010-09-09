WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE RiesenInt IS

   TYPE Uint_256 IS RANGE 0..Integer'Last*2;
   uintVar: Uint_256 :=Uint_256(Integer'Last);
   BEGIN
      UintVar:=UintVar+256;
      UintVar:=UintVar-512;

      Put(Integer(uintVar));

    null;
end RiesenInt;
