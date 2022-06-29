LIBRARY IEEE;
	 use IEEE.std_logic_1164.all;

ENTITY ram is

	port(
			clk, rst       : IN STD_LOGIC;
			seletor        : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			memoria_sub 	 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			memoria_sum    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			saida          : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);

END ram;

architecture mem of ram is

	COMPONENT multiplex_ram is

		port(
				seletor        : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				sum            : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				sub            : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				default_value	 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				saida          : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
		);

	END COMPONENT multiplex_ram;

	signal saida_mux : STD_LOGIC_VECTOR(5 DOWNTO 0);
	signal memoria   : STD_LOGIC_VECTOR(5 DOWNTO 0);

begin

   mux_sub_add: multiplex_ram port map(seletor(0)    => seletor(0),
																			 seletor(1)    => seletor(1),
																			 sum           => memoria_sum,
																			 sub           => memoria_sub,
																		 	 default_value => memoria,
																			 saida         => saida_mux);

	process(clk, rst)

		begin

		if falling_edge(clk) then --

			memoria <= saida_mux;

		end if;

		if rst='1' then

			memoria <= "000000";

		end if;

	end process;

	saida <= memoria;

end architecture;
