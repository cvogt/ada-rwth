WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;

PROCEDURE Generics IS

   GENERIC
      TYPE Item IS PRIVATE;
      WITH FUNCTION "*"(U,V: Item) RETURN Item is <>;
      FUNCTION Hoch_Zwei (X:Item) RETURN Item;
         FUNCTION Hoch_Zwei (X:Item) RETURN Item IS

      BEGIN
         RETURN X*X;
      END Hoch_Zwei;

 function h2 is new Hoch_zwei(Integer);

BEGIN
      put(H2(2));
    null;
end generics;
