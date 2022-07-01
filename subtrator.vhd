LIBRARY IEEE;
	USE IEEE.std_logic_1164.ALL;
	USE work.math_pkg.ALL;

ENTITY subtrator IS

	PORT(
		dinheiroIN    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		valor_produto : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		dinheiroOUT   : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);

END ENTITY subtrator;

ARCHITECTURE sub of subtrator is

BEGIN

	PROCESS(dinheiroIN)

	BEGIN

		dinheiroOUT <= subtrai(dinheiroIN, valor_produto);

	END PROCESS;

END ARCHITECTURE;
