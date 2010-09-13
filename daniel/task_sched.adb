WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE task_sched IS
   TASK A_Printer IS
   END;
   TASK B_Printer IS
   END;

   TASK BODY A_Printer IS
   BEGIN
      for I in Integer range 1..100 loop
            Put(1);
      END LOOP;

   END A_Printer;
   TASK BODY B_Printer IS
   BEGIN
           for I in Integer range 1..100 loop
            Put(2);
      END LOOP;
   END B_Printer;

   BEGIN

    null;
end task_sched;
