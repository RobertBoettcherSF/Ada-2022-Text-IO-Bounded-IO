--  Ada 2022 topic: Ada.Text_IO.Bounded_IO.
pragma Ada_2022;
package Text_IO_Bounded_IO_Demo is
   --  Put_Line a Bounded_String to a temp file, Get_Line it back, compare.
   function Roundtrip_File (Path : String) return Boolean;
end Text_IO_Bounded_IO_Demo;
