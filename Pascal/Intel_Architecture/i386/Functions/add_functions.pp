PROGRAM add_functions_program(input, output, stderr);

VAR
	a, b, c : INTEGER;

FUNCTION add_function(f_a : INTEGER; f_b : INTEGER) : INTEGER;

BEGIN
	add_function := f_a + f_b;
END;

BEGIN

	a := 2;
	b := 3;

	c := add_function(a, b);

END.
