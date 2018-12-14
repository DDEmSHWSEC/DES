library ieee;
use ieee.std_logic_1164.all;

entity 	Compression_D_box is 
	port (
		input : in std_logic_vector(0 to 55);
		output : out std_logic_vector(0 to 47)
	);
end entity;

architecture p of Compression_D_box is 

begin
	
	output(00) <= input(13);
	output(01) <= input(16);
	output(02) <= input(10);
	output(03) <= input(23);
	output(04) <= input(00);
	output(05) <= input(04);
	output(06) <= input(02);
	output(07) <= input(27);
	output(08) <= input(14);
	output(09) <= input(05);
	output(10) <= input(20);
	output(11) <= input(09);
	output(12) <= input(22);
	output(13) <= input(18);
	output(14) <= input(11);
	output(15) <= input(03);
	output(16) <= input(25);
	output(17) <= input(07);
	output(18) <= input(15);
	output(19) <= input(06);
	output(20) <= input(26);
	output(21) <= input(19);
	output(22) <= input(12);
	output(23) <= input(01);
	output(24) <= input(40);
	output(25) <= input(51);
	output(26) <= input(30);
	output(27) <= input(36);
	output(28) <= input(46);
	output(29) <= input(54);
	output(30) <= input(29);
	output(31) <= input(39);
	output(32) <= input(50);
	output(33) <= input(44);
	output(34) <= input(32);
	output(35) <= input(47);
	output(36) <= input(43);
	output(37) <= input(48);
	output(38) <= input(38);
	output(39) <= input(55);
	output(40) <= input(33);
	output(41) <= input(52);
	output(42) <= input(45);
	output(43) <= input(41);
	output(44) <= input(49);
	output(45) <= input(35);
	output(46) <= input(28);
	output(47) <= input(31);

end p;
