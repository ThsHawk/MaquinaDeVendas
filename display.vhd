LIBRARY IEEE;
	USE IEEE.std_logic_1164.ALL;
	USE IEEE.numeric_std.ALL;

ENTITY display IS
-- Exibimos o input no display de sete segmentos
	port(
		dinheiroIN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		seletor    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		enable     : IN STD_LOGIC;
		Display0   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Primeiro display de 7 segmentos  -> HEX20 - HEX27
		Display1   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Segundo display de 7 segmentos   -> HEX30 - HEX37
		Display2   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Terceiro display de 7 segmentos  -> HEX40 - HEX47
		Display3   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  -- Quarto display de 7 segmentos    -> HEX50 - HEX57
	);

END ENTITY display;

ARCHITECTURE display_valor of display IS

BEGIN

	PROCESS(dinheiroIN)

	BEGIN

		CASE dinheiroIN IS

			WHEN "000000" =>

				Display0 <= "00000011";
				Display1 <= "00000010";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 0,00

			WHEN "000001" =>

				Display0 <= "00000011";
				Display1 <= "00000010";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 0,25

			WHEN "000010" =>

				Display0 <= "00000011";
				Display1 <= "00000010";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 0,50

			WHEN "000011" =>

				Display0 <= "00000011";
				Display1 <= "00000010";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 0,75

			WHEN "000100" =>

				Display0 <= "00000011";
				Display1 <= "10011110";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 1,00

			WHEN "000101" =>

				Display0 <= "00000011";
				Display1 <= "10011110";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 1,25

			WHEN "000110" =>

				Display0 <= "00000011";
				Display1 <= "10011110";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 1,50

			WHEN "000111" =>

				Display0 <= "00000011";
				Display1 <= "10011110";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 1,75

			WHEN "001000" =>

				Display0 <= "00000011";
				Display1 <= "00100100";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 2,00

			WHEN "001001" =>

				Display0 <= "00000011";
				Display1 <= "00100100";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 2,25

			WHEN "001010" =>

				Display0 <= "00000011";
				Display1 <= "00100100";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 2,50

			WHEN "001011" =>

				Display0 <= "00000011";
				Display1 <= "00100100";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 2,75

			WHEN "001100" =>

				Display0 <= "00000011";
				Display1 <= "00001100";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 3,00

			WHEN "001101" =>

				Display0 <= "00000011";
				Display1 <= "00001100";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 3,25

			WHEN "001110" =>

				Display0 <= "00000011";
				Display1 <= "00001100";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 3,50

			WHEN "001111" =>

				Display0 <= "00000011";
				Display1 <= "00001100";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 3,75

			WHEN "010000" =>

				Display0 <= "00000011";
				Display1 <= "10011000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 4,00

			WHEN "010001" =>

				Display0 <= "00000011";
				Display1 <= "10011000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 4,25

			WHEN "010010" =>

				Display0 <= "00000011";
				Display1 <= "10011000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 4,50

			WHEN "010011" =>

				Display0 <= "00000011";
				Display1 <= "10011000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 4,75

			WHEN "010100" =>

				Display0 <= "00000011";
				Display1 <= "01001000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 5,00

			WHEN "010101" =>

				Display0 <= "00000011";
				Display1 <= "01001000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 5,25

			WHEN "010110" =>

				Display0 <= "00000011";
				Display1 <= "01001000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 5,50

			WHEN "010111" =>

				Display0 <= "00000011";
				Display1 <= "01001000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 5,75

			WHEN "011000" =>

				Display0 <= "00000011";
				Display1 <= "01000000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 6,00

			WHEN "011001" =>

				Display0 <= "00000011";
				Display1 <= "01000000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 6,25

			WHEN "011010" =>

				Display0 <= "00000011";
				Display1 <= "01000000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 6,50

			WHEN "011011" =>

				Display0 <= "00000011";
				Display1 <= "01000000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 6,75

			WHEN "011100" =>

				Display0 <= "00000011";
				Display1 <= "00011110";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 7,00

			WHEN "011101" =>

				Display0 <= "00000011";
				Display1 <= "00011110";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 7,25

			WHEN "011110" =>

				Display0 <= "00000011";
				Display1 <= "00011110";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 7,50

			WHEN "011111" =>

				Display0 <= "00000011";
				Display1 <= "00011110";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 7,75

			WHEN "100000" =>

				Display0 <= "00000011";
				Display1 <= "00000000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 8,00

			WHEN "100001" =>

				Display0 <= "00000011";
				Display1 <= "00000000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 8,25

			WHEN "100010" =>

				Display0 <= "00000011";
				Display1 <= "00000000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 8,50

			WHEN "100011" =>

				Display0 <= "00000011";
				Display1 <= "00000000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 8,75

			WHEN "100100" =>

				Display0 <= "00000011";
				Display1 <= "00001000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 9,00

			WHEN "100101" =>

				Display0 <= "00000011";
				Display1 <= "00001000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 9,25

			WHEN "100110" =>

				Display0 <= "00000011";
				Display1 <= "00001000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 9,50

			WHEN "100111" =>

				Display0 <= "00000011";
				Display1 <= "00001000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 9,75

			WHEN "101000" =>

				Display0 <= "10011111";
				Display1 <= "00000010";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 10,00

			WHEN "101001" =>

				Display0 <= "10011111";
				Display1 <= "00000010";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 10,25

			WHEN "101010" =>

				Display0 <= "10011111";
				Display1 <= "00000010";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 10,50

			WHEN "101011" =>

				Display0 <= "10011111";
				Display1 <= "00000010";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 10,05

			WHEN "101100" =>

				Display0 <= "10011111";
				Display1 <= "10011110";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 11,00

			WHEN "101101" =>

				Display0 <= "10011111";
				Display1 <= "10011110";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 11,25

			WHEN "101110" =>

				Display0 <= "10011111";
				Display1 <= "10011110";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 11,50

			WHEN "101111" =>

				Display0 <= "10011111";
				Display1 <= "10011110";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 11,75

			WHEN "110000" =>

				Display0 <= "10011111";
				Display1 <= "00100100";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 12,00

			WHEN "110001" =>

				Display0 <= "10011111";
				Display1 <= "00100100";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 12,25

			WHEN "110010" =>

				Display0 <= "10011111";
				Display1 <= "00100100";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 12,50

			WHEN "110011" =>

				Display0 <= "10011111";
				Display1 <= "00100100";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 12,75

			WHEN "110100" =>

				Display0 <= "10011111";
				Display1 <= "00001100";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 13,00

			WHEN "110101" =>

				Display0 <= "10011111";
				Display1 <= "00001100";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 13,25

			WHEN "110110" =>

				Display0 <= "10011111";
				Display1 <= "00001100";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 13,50

			WHEN "110111" =>

				Display0 <= "10011111";
				Display1 <= "00001100";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 13,75

			WHEN "111000" =>

				Display0 <= "10011111";
				Display1 <= "10011000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 14,00

			WHEN "111001" =>

				Display0 <= "10011111";
				Display1 <= "10011000";
				Display2 <= "00100101";
				Display3 <= "01001001"; -- 14,25

			WHEN "111010" =>

				Display0 <= "10011111";
				Display1 <= "10011000";
				Display2 <= "01001001";
				Display3 <= "00000011"; -- 14,50

			WHEN "111011" =>

				Display0 <= "10011111";
				Display1 <= "10011000";
				Display2 <= "00011111";
				Display3 <= "01001001"; -- 14,75

			WHEN "111100" =>

				Display0 <= "10011111";
				Display1 <= "01001000";
				Display2 <= "00000011";
				Display3 <= "00000011"; -- 15,00

			WHEN OTHERS   =>

				Display0 <= "00000011";
				Display1 <= "11110101";
				Display2 <= "11110101";
				Display3 <= "01100001"; -- ORRE

	END CASE;

	if seletor="0001" AND enable='1' then

		Display0 <= "00010001";
		Display1 <= "01000001";
		Display2 <= "10000011";
		Display3 <= "00010001"; -- AGUA

	elsif seletor="0010" AND enable='1' then

		Display0 <= "11110101";
		Display1 <= "01100001";
		Display2 <= "01110001";
		Display3 <= "11110011"; -- REFI

	elsif seletor="0100" AND enable='1' then

		Display0 <= "01001001";
		Display1 <= "00010001";
		Display2 <= "11100011";
		Display3 <= "01000001"; -- SALG

	elsif seletor="1000" AND enable='1' then

		Display0 <= "11100101";
		Display1 <= "11010001";
		Display2 <= "11000101";
		Display3 <= "11100101"; -- CHOC

	end if;

	END PROCESS;

END ARCHITECTURE;
