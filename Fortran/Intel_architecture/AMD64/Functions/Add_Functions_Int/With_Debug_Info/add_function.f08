module function_module

      implicit none

contains

      function add_function(f_a, f_b) result (f_c)
              integer   :: f_a, f_b, f_c

              f_c = f_a + f_b

      end function add_function

end module function_module

program use_functions

      use function_module
      implicit none

      integer           :: a, b, c

      a = 2

      b = 3

      c = add_function(a, b)

end program use_functions
