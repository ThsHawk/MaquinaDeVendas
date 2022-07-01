LIBRARY IEEE;
	USE IEEE.std_logic_1164.ALL;
	USE work.math_pkg.all;

ENTITY comparador IS

	PORT(
		dinheiroIN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		agua       : OUT STD_LOGIC;
		refi       : OUT STD_LOGIC;
		salg       : OUT STD_LOGIC;
		choc       : OUT STD_LOGIC
	);

END ENTITY comparador;

ARCHITECTURE cmp of comparador IS

begin

	PROCESS(dinheiroIN)

		VARIABLE valor_produto : STD_LOGIC_VECTOR(5 DOWNTO 0);

	begin

		valor_produto := "000110";
		agua <= compara(dinheiroIN, valor_produto);

		valor_produto := "001100";
		refi <= compara(dinheiroIN, valor_produto);

		valor_produto := "001110";
		salg <= compara(dinheiroIN, valor_produto);

		valor_produto := "001111";
		choc <= compara(dinheiroIN, valor_produto);

	END PROCESS;

END ARCHITECTURE;
