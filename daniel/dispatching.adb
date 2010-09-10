WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE dispatching IS
   TYPE Basistyp IS TAGGED RECORD
      X:Integer;
   END RECORD;
   TYPE Kindstyp IS NEW Basistyp with RECORD
         Y:Integer;
   END RECORD;
      TYPE HierarchPointer IS ACCESS ALL Basistyp'Class;
   A:Basistyp:= (others=>0);
   B:Kindstyp:= (others=>1);
   PROCEDURE Proz(P:Basistyp'Class) IS BEGIN
      Put(P.x);
   END Proz;


   BEGIN
      Proz(A);
      Proz(B);
    null;
end dispatching;
