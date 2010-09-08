WITH Mydemo;
WITH Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
PROCEDURE Hu IS
   Parameter: Integer;
 BEGIN
   get(Parameter);
   Mydemo.Demo(Parameter);
   null;
end hu;
