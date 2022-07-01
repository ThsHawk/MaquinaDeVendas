LIBRARY IEEE;
	USE IEEE.std_logic_1164.ALL;

ENTITY multiplex_sum IS

	PORT(
		seletor       : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		entrada_01    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entrada_02    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entrada_03    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		default_value : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		enable        : OUT STD_LOGIC;
		dinheiroOUT   : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);

END ENTITY multiplex_sum;

ARCHITECTURE mux of multiplex_sum is

BEGIN

	PROCESS(seletor)

	BEGIN

		if seletor="001"then

			dinheiroOUT <= entrada_01;
			enable      <= '1'; --

		elsif seletor="010"then

			dinheiroOUT <= entrada_02;
			enable      <= '1'; --

		elsif seletor="100"then

			dinheiroOUT <= entrada_03;
			enable      <= '1'; --

		else

			dinheiroOUT <= default_value;
			enable      <= '0'; --

		end if;

	END PROCESS;

END ARCHITECTURE;
