library ieee;
use ieee.std_logic_1164.all;

entity s5_box is
    port(
    input : in std_logic_vector(0 to 5);
    output : out std_logic_vector(0 to 3)
    );
end entity;

architecture s of s5_box is 
    begin       
with (input) select
	output <= "1100" when "000000",
        "0001" when "000010",
        "1010" when "000100",
        "1111" when "000110",
        "1001" when "001000",
        "0010" when "001010",
        "0110" when "001100",
        "1000" when "001110",
        "0000" when "010000",
        "1101" when "010010",
        "0011" when "010100",
        "0100" when "010110",
        "1110" when "011000",
        "0111" when "011010",
        "0101" when "011100",
        "1011" when "011110",
        "1010" when "100000",
        "1111" when "100010",
        "0100" when "100100",
        "0010" when "100110",
        "0111" when "101000",
        "1100" when "101010",
        "1001" when "101100",
        "0101" when "101110",
        "0110" when "110000",
        "0001" when "110010",
        "1101" when "110100",
        "1110" when "110110",
        "0000" when "111000",
        "1011" when "111010",
        "0011" when "111100",
        "1000" when "111110",
        "1001" when "000001",
        "1110" when "000011",
        "1111" when "000101",
        "0101" when "000111",
        "0010" when "001001",
        "1000" when "001011",
        "1100" when "001101",
        "0011" when "001111",
        "0111" when "010001",
        "0000" when "010011",
        "0100" when "010101",
        "1010" when "010111",
        "0001" when "011001",
        "1101" when "011011",
        "1011" when "011101",
        "0110" when "011111",
        "0100" when "100001",
        "0011" when "100011",
        "0010" when "100101",
        "1100" when "100111",
        "1001" when "101001",
        "0101" when "101011",
        "1111" when "101101",
        "1010" when "101111",
        "1011" when "110001",
        "1110" when "110011",
        "0001" when "110101",
        "0111" when "110111",
        "1010" when "111001",
        "0000" when "111011",
        "1000" when "111101",
        "1101" when "111111",
        UNAFFECTED when others;
	end architecture;