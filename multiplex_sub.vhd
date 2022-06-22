LIBRARY IEEE;
	 USE IEEE.std_logic_1164.ALL;
	 
ENTITY multiplex_sub IS

	PORT(
		agua, refi, salg, choc              : IN STD_LOGIC;
		seletor                             : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		entrada_01				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entrada_02				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entrada_03				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		entrada_04				               : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		default_value				            : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		enable                              : OUT STD_LOGIC;
		dinheiroOUT				               : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		seletorOUT                          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
	
END ENTITY multiplex_sub;

ARCHITECTURE mux of multiplex_sub is

BEGIN

	PROCESS(seletor)
	
	BEGIN

		if seletor="0001" AND agua='1' then
		
				 dinheiroOUT <= entrada_01;
				 enable      <= '1'; --
				 seletorOUT  <= "0001";
				 
		elsif seletor="0010" AND refi='1' then
		
				 dinheiroOUT <= entrada_02;
				 enable      <= '1'; --
				 seletorOUT  <= "0010";
				 
		elsif seletor="0100" AND salg='1' then
		
				 dinheiroOUT <= entrada_03;
				 enable      <= '1'; --
				 seletorOUT  <= "0100";
				 
		elsif seletor="1000" AND choc='1' then
		
				 dinheiroOUT <= entrada_04;
				 enable      <= '1'; --
				 seletorOUT  <= "1000";
				 
		else
		
				 dinheiroOUT <= default_value;
				 enable      <= '0'; --
				 seletorOUT  <= "0000";
		
		end if;
								 
	END PROCESS;		 
			
END ARCHITECTURE;