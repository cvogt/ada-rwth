WITH Mydemo;
WITH Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
PROCEDURE Hu IS
   Parameter: Integer;
   MyString: String := "A";
   MySecond: String := "B";
   TYPE Complex IS
   RECORD
      RealPart: Integer :=1;
      ImagPart: Integer:=1;
   END RECORD;
      C: Complex;
   D:Complex:=(2,9);
   E: Complex:=(RealPart=>5, others =>6);
BEGIN
  -- Put(C.RealPart);
  -- Put(C.ImagPart);

  -- get(Parameter);
   Mydemo.Demo(Parameter);
   null;
end hu;
