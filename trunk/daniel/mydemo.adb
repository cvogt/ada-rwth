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
   --TYPE Farbe IS (Rot, Gelb, Gruen, Blau);
   --type Farbenmischung is array (Farbe range <>) of float;
   --type Tag is (Mo, Di, Mi, Dn, Fr, Sa, So);
   TYPE MyArr IS ARRAY(0..Looping) OF Character;
  -- type unbegrenzteZeile is array (natural range <>) of character;
   MyArrObj :MyArr;
  -- Orange: CONSTANT Farbenmischung := (0.5,0.5);
   n: positive;
   --myString: constant unbegrenzteZeile := "Demonstration";
  -- MeineZeile: CONSTANT UnbegrenzteZeile:=myString;

BEGIN
   n:=-1;
   Put(n);
  -- Put(myString'First);
   Get(Bla);



   CASE Bla IS
      WHEN '1'.. '5' =>
         Put_Line("1 bis 5");

      WHEN '6'.. '9' =>
         Put_Line("6 bis 9");
      WHEN OTHERS =>
         Put_Line("others");

   END CASE;
      MyArrObj := (others =>'0');
      MyArrObj((Looping/2)) := Bla;
   New_Line;

   MyLoop:
      WHILE LocalLooping < Looping LOOP
      Put(LocalLooping);
      Put(' ');
      Put(MyArrObj(LocalLooping));
      New_Line;
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
