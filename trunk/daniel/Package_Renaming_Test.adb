WITH Mydemo;
WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;
use mydemo;
PROCEDURE Package_Renaming_Test IS
   Parameter: Integer;
   procedure Test(X: Integer) renames Mydemo.Demo;
 BEGIN
   get(Parameter);
   Test(Parameter);
   null;
end Package_Renaming_Test;
