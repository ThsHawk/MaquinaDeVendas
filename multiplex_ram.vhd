LIBRARY IEEE;
	 use IEEE.std_logic_1164.all;

ENTITY multiplex_ram is

	port(
			seletor        : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			sum            : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			sub            : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			default_value	: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			saida          : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
	
END multiplex_ram;

architecture mux of multiplex_ram is

begin
  
	with seletor select
	
		 saida <= sum when "01", -- memoria_sum
		
					 sub when "10", -- memoria_sub
		
					 default_value when others;-- Valor					
	
  
end architecture;	