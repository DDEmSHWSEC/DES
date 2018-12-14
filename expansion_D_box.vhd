library ieee;
use ieee.std_logic_1164.all;

entity expansion_D_box is
	port (
		input :  in std_logic_vector(0 to 31);
		output : out std_logic_vector(0 to 47)
	);
end entity;

architecture expansion of expansion_D_box is 
		
begin

	process(input)
		variable i , in_counter , out_counter: integer;
	begin
		i:= 0;
		in_counter := 0;
		out_counter:= 0;
		l1 : while (i < 8) loop
				if(i = 0) then output(0) <= input(31); 
					else output(i * 6) <= input((i * 4) - 1);
				end if;
				out_counter:= out_counter + 1;
				output(out_counter) <= input(in_counter);
				output(out_counter + 1) <= input(in_counter + 1);
				output(out_counter + 2) <= input(in_counter + 2);
				output(out_counter + 3) <= input(in_counter + 3);
				out_counter:= out_counter + 4;
				in_counter:= in_counter + 4;
				if(i = 7) then output(47) <= input(0);
					else output(out_counter) <= input(in_counter);
				end if;
				out_counter:= out_counter + 1;
				i:= i + 1;
			end loop l1;
	end process;

end expansion;
