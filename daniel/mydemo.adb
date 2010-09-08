--WITH Text_IO;
WITH Ada.Integer_Text_IO;
WITH Ada.Text_IO;
--USE Text_IO;
USE Ada.Integer_Text_IO;
use ada.Text_IO;

package body mydemo is



prOCEDURE Demo (Looping:Integer:=1) IS
   Bla     : Character;
   LocalLooping : Integer   := 0;

BEGIN

   Get(Bla);



   CASE Bla IS
      WHEN '1'.. '5' =>
         Put_Line("1 bis 5");

      WHEN '6'.. '9' =>
         Put_Line("6 bis 9");
      WHEN OTHERS =>
         Put_Line("others");

   END CASE;

   New_Line;

   MyLoop:
      WHILE LocalLooping < Looping LOOP
      Put(LocalLooping);

      LocalLooping:=LocalLooping+1;
   END LOOP MyLoop;
   New_Line;
   New_Line;
   --FOR I IN Mo..So LOOP
   --   Put(Tag'Pos(I));


    --  New_Line;
   --end loop;

END Demo;

end mydemo;
