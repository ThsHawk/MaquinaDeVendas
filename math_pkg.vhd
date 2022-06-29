LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;

PACKAGE math_pkg IS

	function soma (entrada, somando : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR;
	function subtrai (entrada, subtraindo : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR;
	function compara (entrada, comparando : STD_LOGIC_VECTOR) return STD_LOGIC;

END;

PACKAGE BODY math_pkg IS

	function soma (entrada, somando : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is

		-- Recebera a saida de cada somador
		VARIABLE somador : STD_LOGIC_VECTOR(5 DOWNTO 0);
		-- Recebera o resto de cada somador
		VARIABLE resto	  : STD_LOGIC;

	begin

		-- Primeiro adder
		somador(0) := entrada(0) XOR somando(0);
		resto := entrada(0) AND somando(0);

		-- Segundo full-adder
		somador(1) := entrada(1) XOR somando(1) XOR resto;
		resto := (entrada(1) AND somando(1)) OR ((entrada(1) XOR somando(1)) AND resto);

		-- Terceiro full-adder
		somador(2) := entrada(2) XOR somando(2) XOR resto;
		resto := (entrada(2) AND somando(2)) OR ((entrada(2) XOR somando(2)) AND resto);

		-- Quarto full-adder
		somador(3) := entrada(3) XOR somando(3) XOR resto;
		resto := (entrada(3) AND somando(3)) OR ((entrada(3) XOR somando(3)) AND resto);

		-- Quinto full-adder
		somador(4) := entrada(4) XOR somando(4) XOR resto;
		resto := (entrada(4) AND somando(4)) OR ((entrada(4) XOR somando(4)) AND resto);

		-- Sexto full-adder
		somador(5) := entrada(5) XOR somando(5) XOR resto;

		return somador;

	end function;

	function subtrai (entrada, subtraindo : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is

		VARIABLE DIFF     : STD_LOGIC_VECTOR(5 DOWNTO 0);
		VARIABLE Borrow	: STD_LOGIC;

	begin

		DIFF(0) := entrada(0) xor subtraindo(0);
		Borrow := ((not entrada(0)) and subtraindo(0)) or subtraindo(0);

		DIFF(1) := (entrada(1) xor subtraindo(1)) xor Borrow;
		Borrow := ((not entrada(1)) and (subtraindo(1) or Borrow)) or (subtraindo(1) and Borrow);

		DIFF(2) := (entrada(2) xor subtraindo(2)) xor Borrow;
		Borrow := ((not entrada(2)) and (subtraindo(2) or Borrow)) or (subtraindo(2) and Borrow);

		DIFF(3) := (entrada(3) xor subtraindo(3)) xor Borrow;
		Borrow := ((not entrada(3)) and (subtraindo(3) or Borrow)) or (subtraindo(3) and Borrow);

		DIFF(4) := (entrada(4) xor subtraindo(4)) xor Borrow;
		Borrow := ((not entrada(4)) and (subtraindo(4) or Borrow)) or (subtraindo(4) and Borrow);

		DIFF(5) := (entrada(5) xor subtraindo(5)) xor Borrow;

		return DIFF;

	end function;

	function compara (entrada, comparando : STD_LOGIC_VECTOR) return STD_LOGIC is

		VARIABLE nxor01, nxor02, nxor03, nxor04, nxor05, nxor06  : STD_LOGIC;
		VARIABLE and02, and03, and04, and05, and06, and07        : STD_LOGIC;
		VARIABLE maior, igual                                    : STD_LOGIC;

	begin

		nxor01 := entrada(5) XNOR comparando(5);
		nxor02 := entrada(4) XNOR comparando(4);
		nxor03 := entrada(3) XNOR comparando(3);
		nxor04 := entrada(2) XNOR comparando(2);
		nxor05 := entrada(1) XNOR comparando(1);
		nxor06 := entrada(0) XNOR comparando(0);

		and02 := (entrada(5) AND (NOT comparando(5)));
		and03 := (nxor01 AND entrada(4) AND (NOT comparando(4)));
		and04 := (nxor01 AND nxor02 AND entrada(3) AND (NOT comparando(3)));
		and05 := (nxor01 AND nxor02 AND nxor03 AND entrada(2) AND (NOT comparando(2)));
		and06 := (nxor01 AND nxor02 AND nxor03 AND nxor04 AND entrada(1) AND (NOT comparando(1)));
		and07 := (nxor01 AND nxor02 AND nxor03 AND nxor04 AND nxor05 AND entrada(0) AND (NOT comparando(0)));

		maior := (and02 OR and03 OR and04 OR and05 OR and06 OR and07);
		igual := (nxor01 AND nxor02 AND nxor03 AND nxor04 AND nxor05 AND nxor06);

		return igual OR maior;

	end function;

END PACKAGE BODY;
