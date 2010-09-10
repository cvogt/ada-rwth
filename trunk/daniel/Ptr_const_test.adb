WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE Ptr_Const_Test IS
   TYPE MyPtr IS ACCESS Integer;
   TYPE MyPtrC IS ACCESS CONSTANT Integer;
   MyPtrVar:MyPtr;
   myPtrVarC:MyPtrC;
   BEGIN
      MyPtrVar := NEW Integer'(0);
      MyPtrVarC:=MyPtrVar.All'ACCESS;
      MyPtrVar:= MyPtrVarC.all'access;
    null;
end Ptr_Const_Test;
