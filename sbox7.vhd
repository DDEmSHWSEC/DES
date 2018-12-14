library ieee;
use ieee.std_logic_1164.all;

entity s7_box is
    port(
    input : in std_logic_vector(0 to 5);
    output : out std_logic_vector(0 to 3)
    );
end entity;

architecture s of s7_box is 
    begin
	with (input) select
	output <= "1101" when "000000",
        "0010" when "000010",
        "1000" when "000100",
        "0100" when "000110",
        "0110" when "001000",
        "1111" when "001010",
        "1011" when "001100",
        "0001" when "001110",
        "1010" when "010000",
        "1001" when "010010",
        "0011" when "010100",
        "1110" when "010110",
        "0101" when "011000",
        "0000" when "011010",
        "1100" when "011100",
        "0111" when "011110",
        "0001" when "100000",
        "1111" when "100010",
        "1101" when "100100",
        "1000" when "100110",
        "1010" when "101000",
        "0011" when "101010",
        "0111" when "101100",
        "0100" when "101110",
        "1100" when "110000",
        "0101" when "110010",
        "0110" when "110100",
        "1011" when "110110",
        "1010" when "111000",
        "1110" when "111010",
        "1001" when "111100",
        "0010" when "111110",
        "0111" when "000001",
        "1011" when "000011",
        "0100" when "000101",
        "0001" when "000111",
        "1001" when "001001",
        "1100" when "001011",
        "1110" when "001101",
        "0010" when "001111",
        "0000" when "010001",
        "0110" when "010011",
        "1010" when "010101",
        "1010" when "010111",
        "1111" when "011001",
        "0011" when "011011",
        "0101" when "011101",
        "1000" when "011111",
        "0010" when "100001",
        "0001" when "100011",
        "1110" when "100101",
        "0111" when "100111",
        "0100" when "101001",
        "1010" when "101011",
        "1000" when "101101",
        "1101" when "101111",
        "1111" when "110001",
        "1100" when "110011",
        "1001" when "110101",
        "1001" when "110111",
        "0011" when "111001",
        "0101" when "111011",
        "0110" when "111101",
        "1011" when "111111",
        UNAFFECTED when others;
end architecture;