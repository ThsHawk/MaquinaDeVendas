LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;
	 
ENTITY MaquinaDeVendas IS

	PORT(
		moeda25, moeda50, moeda1            : IN STD_LOGIC;
		sw_agua, sw_refi, sw_salg, sw_choc  : IN STD_LOGIC;
		clk, rst                            : IN STD_LOGIC;
		HEX0                                : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Primeiro display de 7 segmentos  -> HEX20 - HEX27
	   HEX1                                : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Segundo display de 7 segmentos   -> HEX30 - HEX37
		HEX2                                : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Terceiro display de 7 segmentos  -> HEX40 - HEX47
		HEX3                                : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  -- Quarto display de 7 segmentos 
	);
	
END ENTITY MaquinaDeVendas;

ARCHITECTURE main of MaquinaDeVendas is
	
	COMPONENT somadores IS

		PORT(
			moeda25, moeda50, moeda1 : IN STD_LOGIC;
			dinheiroIN			       : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			dinheiroOUT				    : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			enable                   : OUT STD_LOGIC
		);
		
	END COMPONENT somadores;
	
	COMPONENT subtratores IS

		PORT(
			sw_agua, sw_refi, sw_salg, sw_choc  : IN STD_LOGIC;
			agua, refi, salg, choc              : IN STD_LOGIC;
			dinheiroIN			                  : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			dinheiroOUT				               : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			enable                              : OUT STD_LOGIC;
			seletorOUT                          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
		
	END COMPONENT subtratores;
	
	COMPONENT comparador IS

		PORT(
			dinheiroIN				: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			agua 						: OUT STD_LOGIC;
			refi 						: OUT STD_LOGIC;
			salg 						: OUT STD_LOGIC;
			choc 						: OUT STD_LOGIC
		);
	
	END COMPONENT comparador;
	
	COMPONENT ram is

		port(
				clk, rst       : IN STD_LOGIC;
				seletor        : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				memoria_sub 	: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				memoria_sum    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				saida          : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		);
	
	END COMPONENT ram;
	
	COMPONENT display IS
		-- Exibimos o input no display de sete segmentos
		port(	
			dinheiroIN	: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			seletor     : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			enable      : IN STD_LOGIC;
			Display0    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Primeiro display de 7 segmentos  -> HEX20 - HEX27
			Display1    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Segundo display de 7 segmentos   -> HEX30 - HEX37
			Display2    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Terceiro display de 7 segmentos  -> HEX40 - HEX47
			Display3    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  -- Quarto display de 7 segmentos    -> HEX50 - HEX57
		);
 
	END COMPONENT display;
	
	SIGNAL memoria_valor                   : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL memoria_sum                     : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL memoria_sub                     : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL signal_agua 					      : STD_LOGIC;
	SIGNAL signal_refi 						   : STD_LOGIC;
	SIGNAL signal_salg 						   : STD_LOGIC;
	SIGNAL signal_choc 						   : STD_LOGIC;
	SIGNAL ram_enable                      : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL signal_seletorOUT               : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN
										
	sum: somadores port map(moeda25     => moeda25,
									moeda50     => moeda50,
									moeda1      => moeda1,
									dinheiroIN  => memoria_valor,
									enable      => ram_enable(0),
									dinheiroOUT => memoria_sum);
	
	sub: subtratores port map(sw_agua     => sw_agua,
									  sw_refi     => sw_refi,
									  sw_salg     => sw_salg,
									  sw_choc     => sw_choc,
									  agua        => signal_agua,
									  refi        => signal_refi,
									  salg        => signal_salg,
									  choc        => signal_choc,
									  dinheiroIN  => memoria_valor,
									  enable      => ram_enable(1),
									  dinheiroOUT => memoria_sub,
									  seletorOUT  => signal_seletorOUT);
									
	memoria: ram port map(clk           => clk,
								 rst           => rst,
								 seletor(0)    => ram_enable(0),
								 seletor(1)    => ram_enable(1),
								 memoria_sum   => memoria_sum,
							    memoria_sub   => memoria_sub,
							    saida         => memoria_valor);
								 
	mostrador: display port map(dinheiroIN  => memoria_valor,
										 seletor     => signal_seletorOUT,
										 enable      => ram_enable(1),
										 Display0    => HEX0,
										 Display1    => HEX1,
										 Display2    => HEX2,
										 Display3    => HEX3);
								 
	cmp_produto: comparador port map(dinheiroIN  => memoria_valor,
												agua        => signal_agua,
												refi        => signal_refi,
												salg        => signal_salg,
												choc        => signal_choc);
END ARCHITECTURE;
								 
	