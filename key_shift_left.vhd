library ieee;
use ieee.std_logic_1164.all;

entity key_shift_left is
	port(
		round_key : in std_logic_vector(3 downto 0);
		input : in bit_vector(27 downto 0);
		mult_round : out std_logic_vector(27 downto 0)
	);
end entity;

architecture p of key_shift_left is 

	signal one_shift : bit_vector(27 downto 0);
	signal two_shift : bit_vector(27 downto 0);
	
	signal one_shift_std : std_logic_vector(27 downto 0);
	signal two_shift_std : std_logic_vector(27 downto 0);

begin
	
	one_shift <= input ROL 1;
	two_shift <= input ROL 2;
	one_shift_std <= To_StdLogicVector(one_shift);
	two_shift_std <= To_StdLogicVector(two_shift);

	slct : entity work.mult2 port map(round_key , one_shift_std , two_shift_std , mult_round);

end p;