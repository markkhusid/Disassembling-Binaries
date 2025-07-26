all: mod_int.s mod_int.o mod_int_Fortran_aarch64_ggdb3 objdump_of_dot_o.txt objdump_of_dot_exe.txt

mod_int.s: mod_int.f08
	gfortran -ggdb3 -S mod_int.f08

mod_int.o: mod_int.s
	gfortran -ggdb3 -c mod_int.s

mod_int_Fortran_aarch64_ggdb3: mod_int.o
	gfortran mod_int.o -o mod_int_Fortran_aarch64_ggdb3

objdump_of_dot_o.txt: mod_int.o
	objdump -x -D -S -s -g -t mod_int.o > objdump_of_dot_o.txt

objdump_of_dot_exe.txt: mod_int_Fortran_aarch64_ggdb3
	objdump -x -D -S -s -g -t mod_int_Fortran_aarch64_ggdb3 > objdump_of_dot_exe.txt

.PHONY: clean
clean:
	rm -f mod_int.s mod_int.o
