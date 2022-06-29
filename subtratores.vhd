LIBRARY IEEE;
	  USE IEEE.std_logic_1164.ALL;

ENTITY subtratores IS

	PORT(
		sw_agua, sw_refi, sw_salg, sw_choc  : IN STD_LOGIC;
		agua, refi, salg, choc              : IN STD_LOGIC;
		dinheiroIN			                    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		dinheiroOUT				                  : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		enable                              : OUT STD_LOGIC;
		seletorOUT                          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);

END ENTITY subtratores;

ARCHITECTURE sub of subtratores IS

	COMPONENT subtrator IS

		PORT(
			dinheiroIN	   :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			valor_produto	 :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			dinheiroOUT	   :	OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		);

	END COMPONENT subtrator;

	COMPONENT multiplex_sub IS

		PORT(
			agua, refi, salg, choc           : IN STD_LOGIC;
			seletor                          : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			entrada_01				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			entrada_02				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			entrada_03				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			entrada_04				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			default_value				             : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			enable                           : OUT STD_LOGIC;
			dinheiroOUT				               : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			seletorOUT                       : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);

	END COMPONENT multiplex_sub;

	SIGNAL signal_sub_agua				      : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_sub_refi				      : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_sub_salg				      : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_sub_choc				      : STD_LOGIC_VECTOR(5 DOWNTO 0);

begin

	sub_agua: subtrator port map(dinheiroIN    => dinheiroIN,
														   valor_produto => "000110",
														   dinheiroOUT   => signal_sub_agua);

	sub_refi: subtrator port map(dinheiroIN    => dinheiroIN,
														   valor_produto => "001100",
														   dinheiroOUT   => signal_sub_refi);

	sub_salg: subtrator port map(dinheiroIN    => dinheiroIN,
														   valor_produto => "001110",
														   dinheiroOUT   => signal_sub_salg);

	sub_choc: subtrator port map(dinheiroIN    => dinheiroIN,
														   valor_produto => "001111",
														   dinheiroOUT   => signal_sub_choc);

	mux_sub: multiplex_sub port map(seletor(0)    => sw_agua,
																  seletor(1)    => sw_refi,
																  seletor(2)    => sw_salg,
																  seletor(3)    => sw_choc,
																  entrada_01    => signal_sub_agua,
																  entrada_02    => signal_sub_refi,
																  entrada_03    => signal_sub_salg,
																  entrada_04    => signal_sub_choc,
																  default_value => dinheiroIN,
																  enable        => enable,
																  dinheiroOUT   => dinheiroOUT,
																  agua          => agua,
																  refi          => refi,
																  salg          => salg,
																  choc          => choc,
																  seletorOUT    => seletorOUT);

END ARCHITECTURE;
