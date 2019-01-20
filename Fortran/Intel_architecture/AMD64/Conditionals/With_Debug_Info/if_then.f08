program if_then

      implicit none

      integer                   ::      num1
      integer, parameter        ::      num2 = 5

      print *, "Enter a number between 1 and 10 -> "
      read *, num1

      if (num1 > num2) then
              print *, "Number entered greater than 5!"
      end if

end program if_then
