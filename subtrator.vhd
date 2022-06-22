LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;
	 USE work.math_pkg.ALL;
	 
ENTITY subtrator IS

	PORT(
		entradaA				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entradaB				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		resultado			: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
	
END ENTITY subtrator;

ARCHITECTURE sub of subtrator is

BEGIN	

	PROCESS IS
	
	BEGIN	
			
		resultado <= subtrai(entradaA, entradaB);
	
	END PROCESS;
			
END ARCHITECTURE;