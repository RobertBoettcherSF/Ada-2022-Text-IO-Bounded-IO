pragma Ada_2022;

with Ada.Strings.Bounded;
with Ada.Text_IO;
with Ada.Text_IO.Bounded_IO;

package body Text_IO_Bounded_IO_Demo is

   package B40 is new Ada.Strings.Bounded.Generic_Bounded_Length (40);
   package Bio is new Ada.Text_IO.Bounded_IO (B40);

   function Roundtrip_File (Path : String) return Boolean is
      use Ada.Text_IO;
      F    : File_Type;
      Orig : constant B40.Bounded_String :=
        B40.To_Bounded_String ("bounded-io-wave23");
      Got  : B40.Bounded_String;
   begin
      Create (F, Out_File, Path);
      Bio.Put_Line (F, Orig);
      Close (F);

      Open (F, In_File, Path);
      Got := Bio.Get_Line (F);
      Close (F);

      return B40.To_String (Got) = B40.To_String (Orig);
   end Roundtrip_File;

end Text_IO_Bounded_IO_Demo;
