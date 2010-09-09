WITH Mydemo;
WITH Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
PROCEDURE Hu IS
   Parameter: Integer;
   type myFloat is digits 19 range 0.0..10.0;
 BEGIN
   get(Parameter);
   Mydemo.Demo(Parameter);
   null;
end hu;
