library ieee;
use ieee.std_logic_1164.all;

entity complete_F is
	port(
		input : in std_logic_vector(31 downto 0);
		key : in std_logic_vector(47 downto 0);
		straight_d_box_state : out std_logic_vector(31 downto 0)
		);
end entity;



architecture p of complete_F is 
	
	signal s_box_state : std_logic_vector(31 downto 0);
	signal expansion_d_box_state : std_logic_vector(47 downto 0);
	signal xor_key_state : std_logic_vector(47 downto 0);
	
begin

	EDB : entity work.expansion_D_box port map(input , expansion_d_box_state);
	X : entity work.XOR_key port map(key , expansion_d_box_state , xor_key_state);
	SB : entity work.S_box port map(xor_key_state ,s_box_state);
	SDB : entity work.straight_d_box port map(s_box_state , straight_d_box_state);

end p;