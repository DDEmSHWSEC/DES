library ieee;
use ieee.std_logic_1164.all;

package reverse is
    function rev(a : in std_logic_vector) return std_logic_vector;
end package;

package body reverse is
    function rev(a : in std_logic_vector) return std_logic_vector is

    variable result: std_logic_vector(a'RANGE);
    alias aa: std_logic_vector(a'REVERSE_RANGE) is a;

    begin
        for i in aa'RANGE loop
            result(i) := aa(i);
        end loop;
        return result;
    end; 
end package body reverse;