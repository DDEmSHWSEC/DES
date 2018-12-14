library ieee;
use ieee.std_logic_1164.all;

entity s0_box is 
	port(
		input : in std_logic_vector(0 to 5);
		output : out std_logic_vector(0 to 3)
	);
end entity;

architecture s of s0_box is

begin
	with (input) select
	output <= "1110"	when "000000",
        "0100"	when "000010",
        "1101"	when "000100",
        "0001"	when "000110",
        "0010"	when "001000",
        "1111"	when "001010",
        "1011"	when "001100",
        "1000"	when "001110",
        "0011"	when "010000",
        "1010"	when "010010",
        "0110"	when "010100",
        "1100"	when "010110",
        "0101"	when "011000",
        "1001"	when "011010",
        "0000"	when "011100",
        "0111"	when "011110",
        "0000"	when "100000",
        "1111"	when "100010",
        "0111"	when "100100",
        "0100"	when "100110",
        "1110"	when "101000",
        "0010"	when "101010",
        "1101"	when "101100",
        "1010"	when "101110",
        "0011"	when "110000",
        "0110"	when "110010",
        "1100"	when "110100",
        "1011"	when "110110",
        "1001"	when "111000",
        "0101"	when "111010",
        "0011"	when "111100",
        "1000"	when "111110",
        "0100"	when "000001",
        "0001"	when "000011",
        "1110"	when "000101",
        "1000"	when "000111",
        "1101"	when "001001",
        "0110"	when "001011",
        "0010"	when "001101",
        "1011"	when "001111",
        "1111"	when "010001",
        "1100"	when "010011",
        "1001"	when "010101",
        "0111"	when "010111",
        "0011"	when "011001",
        "1010"	when "011011",
        "0101"	when "011101",
        "0000"	when "011111",
        "1111"	when "100001",
        "1100"	when "100011",
        "1000"	when "100101",
        "0010"	when "100111",
        "0100"	when "101001",
        "1001"	when "101011",
        "0001"	when "101101",
        "0111"	when "101111",
        "0101"	when "110001",
        "1011"	when "110011",
        "0011"	when "110101",
        "1110"	when "110111",
        "1010"	when "111001",
        "0000"	when "111011",
        "0110"	when "111101",
        "1101"	when "111111",
        UNAFFECTED when others;

end architecture;