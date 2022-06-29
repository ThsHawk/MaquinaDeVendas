LIBRARY IEEE;
	  USE IEEE.std_logic_1164.ALL;
	  USE work.math_pkg.all;

ENTITY somador IS

	PORT(
		dinheiroIN				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		valor_moeda				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		dinheiroOUT				: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);

END ENTITY somador;

ARCHITECTURE sum of somador IS

begin

	PROCESS(dinheiroIN)

	begin

		dinheiroOUT <= soma(dinheiroIN, valor_moeda);

	END PROCESS;

END ARCHITECTURE;
