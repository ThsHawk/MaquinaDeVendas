LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;
	 
ENTITY somadores IS

	PORT(
		moeda25, moeda50, moeda1 : IN STD_LOGIC;
		dinheiroIN			       : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		dinheiroOUT				    : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		enable                   : OUT STD_LOGIC
	);
	
END ENTITY somadores;

ARCHITECTURE sum of somadores IS

	COMPONENT somador IS

		PORT(
			dinheiroIN	 :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			valor_moeda	 :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			dinheiroOUT	 :	OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		);
		
	END COMPONENT somador;
	
	COMPONENT multiplex_sum IS

		PORT(
			seletor                  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			entrada_01				    :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			entrada_02				    :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			entrada_03				    :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			default_value				 :	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			enable                   : OUT STD_LOGIC;
			dinheiroOUT				    :	OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		);
	
	END COMPONENT multiplex_sum;
	
	SIGNAL signal_dinheiro_025c				: STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_dinheiro_050c				: STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_dinheiro_100c				: STD_LOGIC_VECTOR(5 DOWNTO 0);

begin

	sum_025c: somador port map(dinheiroIN  => dinheiroIN,
										valor_moeda => "000001",
										dinheiroOUT => signal_dinheiro_025c);
					
	sum_050c: somador port map(dinheiroIN  => dinheiroIN,
										valor_moeda => "000010",
										dinheiroOUT => signal_dinheiro_050c);
												
	sum_100c: somador port map(dinheiroIN  => dinheiroIN,
										valor_moeda => "000100",
										dinheiroOUT => signal_dinheiro_100c);
										
	mux_sum: multiplex_sum port map(seletor(0)    => moeda25,
											  seletor(1)    => moeda50,
											  seletor(2)    => moeda1,
											  entrada_01    => signal_dinheiro_025c,
											  entrada_02    => signal_dinheiro_050c,
											  entrada_03    => signal_dinheiro_100c,
											  default_value => dinheiroIN,
											  enable        => enable,
											  dinheiroOUT   => dinheiroOUT);

END ARCHITECTURE;
