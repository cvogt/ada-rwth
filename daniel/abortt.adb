WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE abortt IS
I:Integer;
   BEGIN
      SELECT
         DELAY 5.0;
         I:=5;
      THEN ABORT
         LOOP
               null;
            end loop;
      END SELECT;
      Put (I);
    null;
end abortt;
