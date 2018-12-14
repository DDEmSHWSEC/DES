library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.reverse.all;


entity S_box is
	port(
		input : in std_logic_vector(0 to 47);
		output : out std_logic_vector(0 to 31)
		);
end entity;

architecture ip of S_box is

	--signal input : std_logic_vector(47 downto 0);
	--signal output : std_logic_vector(31 downto 0);

begin

	--input <= rev(inputt);
	s0 : entity work.s0_box port map(input(0 to 5), output(0 to 3));
	s1 : entity work.s1_box port map(input(6 to 11), output(4 to 7));
	s2 : entity work.s2_box port map(input(12 to 17), output(8 to 11));
	s3 : entity work.s3_box port map(input(18 to 23), output(12 to 15));
	s4 : entity work.s4_box port map(input(24 to 29), output(16 to 19));
	s5 : entity work.s5_box port map(input(30 to 35), output(20 to 23));
	s6 : entity work.s6_box port map(input(36 to 41), output(24 to 27));
	s7 : entity work.s7_box port map(input(42 to 47), output(28 to 31));
	--outputt <= rev(output);
	
end ip;
