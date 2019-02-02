--
-- Some numbers to come and go.  With IO.
--
with Gnat.Io; use Gnat.Io;
procedure Add_Int_w_IO is
   a, b, c: Integer;

begin

   Put ("Please enter first integer now followed by <CR> -> ");
   Get (a);

   Put ("Please enter second integer now followed by <CR> -> ");
   Get (b);

   c := a + b;

   Put ("The sum is : ");
   Put (c);
   New_Line;

end Add_Int_w_IO;

