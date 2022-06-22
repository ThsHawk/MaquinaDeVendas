LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;
	 USE work.math_pkg.all;
	 
ENTITY somador IS

	PORT(
		entradaA				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entradaB				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		resultado			: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
	
END ENTITY somador;

ARCHITECTURE sum of somador IS

begin

	PROCESS IS
	
	begin
				
		resultado <= soma(entradaA, entradaB);
	
	END PROCESS;

END ARCHITECTURE;
