WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE abortt IS
I:Integer;
   BEGIN
      SELECT
         DELAY 15.0;
         I:=5;
                 LOOP
               null;
            end loop;
      THEN ABORT
         LOOP
               null;
            end loop;
      END SELECT;
      Put (I);
    null;
end abortt;
