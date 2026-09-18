pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Text_IO_Bounded_IO_Demo;
procedure Tests is
begin
   Assert (Text_IO_Bounded_IO_Demo.Roundtrip_File ("/tmp/ada2022_bounded_io_w23.txt"));
   Put_Line ("PASS Text_IO.Bounded_IO Put_Line/Get_Line file round-trip");
   Put_Line ("All Text_IO.Bounded_IO topic tests passed.");
end Tests;
