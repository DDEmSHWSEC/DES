library ieee;
use ieee.std_logic_1164.all;

entity mult2 is
	port(
		sel : in std_logic_vector(3 downto 0);
		input1 : in std_logic_vector(27 downto 0);
		input2 : in std_logic_vector(27 downto 0);
		output : out std_logic_vector(27 downto 0)
	);
	
end entity;

architecture p of mult2 is 

begin

	with (sel) select
		output <= input1 when "0000" | "0001" | "1000" | "1111",
			input2 when others;

end p;