library ieee;
use ieee.std_logic_1164.all;

entity s3_box is
    port(
    input : in std_logic_vector(0 to 5);
    output : out std_logic_vector(0 to 3)
    );
end entity;

architecture s of s3_box is 
    begin
	with (input) select
	output <= "0111" when "000000",
        "1101" when "000010",
        "1110" when "000100",
        "0011" when "000110",
        "0000" when "001000",
        "0110" when "001010",
        "1001" when "001100",
        "1010" when "001110",
        "0001" when "010000",
        "0010" when "010010",
        "1000" when "010100",
        "0101" when "010110",
        "1011" when "011000",
        "1100" when "011010",
        "0100" when "011100",
        "1111" when "011110",
        "1101" when "100000",
        "1000" when "100010",
        "1011" when "100100",
        "0101" when "100110",
        "0110" when "101000",
        "1111" when "101010",
        "0000" when "101100",
        "0011" when "101110",
        "0100" when "110000",
        "0111" when "110010",
        "0010" when "110100",
        "1100" when "110110",
        "0001" when "111000",
        "1010" when "111010",
        "1110" when "111100",
        "1001" when "111110",
        "1010" when "000001",
        "0110" when "000011",
        "1001" when "000101",
        "0000" when "000111",
        "1100" when "001001",
        "1011" when "001011",
        "0111" when "001101",
        "1101" when "001111",
        "1111" when "010001",
        "0001" when "010011",
        "0011" when "010101",
        "1110" when "010111",
        "0101" when "011001",
        "0010" when "011011",
        "1000" when "011101",
        "0100" when "011111",
        "0011" when "100001",
        "1111" when "100011",
        "0000" when "100101",
        "0110" when "100111",
        "1010" when "101001",
        "0001" when "101011",
        "1101" when "101101",
        "1000" when "101111",
        "1001" when "110001",
        "0100" when "110011",
        "0101" when "110101",
        "1011" when "110111",
        "1100" when "111001",
        "0111" when "111011",
        "0010" when "111101",
        "1110" when "111111",
        UNAFFECTED when others;
end architecture;