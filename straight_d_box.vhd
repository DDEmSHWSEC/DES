library ieee;
use ieee.std_logic_1164.all;

entity straight_d_box is
	port(
		input : in std_logic_vector(0 to 31);
		output : out std_logic_vector(0 to 31)
	);

end entity;

architecture p of straight_d_box is 

begin

	output(00) <= input(15);
	output(01) <= input(06);
	output(02) <= input(19);
	output(03) <= input(20);
	output(04) <= input(28);
	output(05) <= input(11);
	output(06) <= input(27);
	output(07) <= input(16);
	output(08) <= input(00);
	output(09) <= input(14);
	output(10) <= input(22);
	output(11) <= input(25);
	output(12) <= input(04);
	output(13) <= input(17);
	output(14) <= input(30);
	output(15) <= input(09);
	output(16) <= input(01);
	output(17) <= input(07);
	output(18) <= input(23);
	output(19) <= input(13);
	output(20) <= input(31);
	output(21) <= input(26);
	output(22) <= input(02);
	output(23) <= input(08);
	output(24) <= input(18);
	output(25) <= input(12);
	output(26) <= input(29);
	output(27) <= input(05);
	output(28) <= input(21);
	output(29) <= input(10);
	output(30) <= input(03);
	output(31) <= input(24);

end p;