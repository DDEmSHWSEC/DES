library ieee;
use ieee.std_logic_1164.all;

entity 	parity_drop is 
	port (
		input : in std_logic_vector(0 to 63);
		output : out std_logic_vector(0 to 55)
	);
end entity;

architecture p of parity_drop is 



begin
	
	output(0) <= input(56);
	output(1) <= input(48);
	output(2) <= input(40);
	output(3) <= input(32);
	output(4) <= input(24);
	output(5) <= input(16);
	output(6) <= input(8);
	output(7) <= input(0);
	output(8) <= input(57);
	output(9) <= input(49);
	output(10) <= input(41);
	output(11) <= input(33);
	output(12) <= input(25);
	output(13) <= input(17);
	output(14) <= input(9);
	output(15) <= input(1);
	output(16) <= input(58);
	output(17) <= input(50);
	output(18) <= input(42);
	output(19) <= input(34);
	output(20) <= input(26);
	output(21) <= input(18);
	output(22) <= input(10);
	output(23) <= input(2);
	output(24) <= input(59);
	output(25) <= input(51);
	output(26) <= input(43);
	output(27) <= input(35);
	output(28) <= input(62);
	output(29) <= input(54);
	output(30) <= input(46);
	output(31) <= input(38);
	output(32) <= input(30);
	output(33) <= input(22);
	output(34) <= input(14);
	output(35) <= input(6);
	output(36) <= input(61);
	output(37) <= input(53);
	output(38) <= input(45);
	output(39) <= input(37);
	output(40) <= input(29);
	output(41) <= input(21);
	output(42) <= input(13);
	output(43) <= input(5);
	output(44) <= input(60);
	output(45) <= input(52);
	output(46) <= input(44);
	output(47) <= input(36);
	output(48) <= input(28);
	output(49) <= input(20);
	output(50) <= input(12);
	output(51) <= input(4);
	output(52) <= input(27);
	output(53) <= input(19);
	output(54) <= input(11);
	output(55) <= input(3);

end p;
