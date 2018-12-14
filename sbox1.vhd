library ieee;
use ieee.std_logic_1164.all;

entity s1_box is 
	port(
		input : in std_logic_vector(0 to 5);
		output : out std_logic_vector(0 to 3)
	);
end entity;

architecture s of s1_box is

begin
with (input) select
	output <= "1111" when "000000",
                "0001" when "000010",
                "1000" when "000100",
                "1110" when "000110",
                "0110" when "001000",
                "1011" when "001010",
                "0011" when "001100",
                "0100" when "001110",
                "1001" when "010000",
                "0111" when "010010",
                "0010" when "010100",
                "1101" when "010110",
                "1100" when "011000",
                "0000" when "011010",
                "0101" when "011100",
                "1010" when "011110",
                "0011" when "100000",
                "1101" when "100010",
                "0100" when "100100",
                "0111" when "100110",
                "1111" when "101000",
                "0010" when "101010",
                "1000" when "101100",
                "1110" when "101110",
                "1100" when "110000",
                "0000" when "110010",
                "0001" when "110100",
                "1010" when "110110",
                "0110" when "111000",
                "1001" when "111010",
                "1011" when "111100",
                "0101" when "111110",
                "0000" when "000001",
                "1110" when "000011",
                "0111" when "000101",
                "1011" when "000111",
                "1010" when "001001",
                "0100" when "001011",
                "1101" when "001101",
                "0001" when "001111",
                "0101" when "010001",
                "1000" when "010011",
                "1100" when "010101",
                "0110" when "010111",
                "1001" when "011001",
                "0011" when "011011",
                "0010" when "011101",
                "1111" when "011111",
                "1101" when "100001",
                "1000" when "100011",
                "1010" when "100101",
                "0001" when "100111",
                "0011" when "101001",
                "1111" when "101011",
                "0100" when "101101",
                "0010" when "101111",
                "1011" when "110001",
                "0110" when "110011",
                "0111" when "110101",
                "1100" when "110111",
                "0000" when "111001",
                "0101" when "111011",
                "1110" when "111101",
                "1001" when "111111",
        UNAFFECTED when others;
end architecture;