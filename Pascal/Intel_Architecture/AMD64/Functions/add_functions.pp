PROGRAM add_functions_program(input, output, stderr);

FUNCTION add_function(const f_a : integer, const f_b : integer) : integer;

BEGIN
	add_function := f_a + f_b;
END;

VAR
	a, b, c : integer;

	a := 2;
	b := 3;

	c := add_function(a, b);

END.
