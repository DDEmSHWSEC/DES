library ieee;
use ieee.std_logic_1164.all;

entity XOR_key is
	port(
		key : in std_logic_vector(0 to 47);
		plaintext : in std_logic_vector(0 to 47);
		output : out std_logic_vector(0 to 47)
	);
end entity;


architecture ip of XOR_key is

begin
	
	g1: for i in 0 to 47 generate
		output(i) <= key(i) xor plaintext(i);
	end generate;
	
end ip;
