with Ada.Text_IO;
with Interfaces.C;

procedure Hello is
   package IO renames Ada.Text_IO;
   package C renames Interfaces.C;

   function add
     (left : C.int; right : C.int) return C
     .int  -- hello.c:3
   with
     Import => True, Convention => C, External_Name => "add";
begin
   IO.Put_Line (C.int'Image (add (1, 2)));
end Hello;
