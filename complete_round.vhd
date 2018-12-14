library ieee;
use ieee.std_logic_1164.all;

entity complete_round is
    port(
        input : in std_logic_vector(63 downto 0);
        key : in std_logic_vector(47 downto 0);
        output : out std_logic_vector(63 downto 0)
    );

    end entity;

architecture p of complete_round is
    signal right_input : std_logic_vector(31 downto 0);
    signal left_input : std_logic_vector(31 downto 0);
    signal answer_F : std_logic_vector(31 downto 0);
    signal right_output : std_logic_vector(31 downto 0);
    signal left_output : std_logic_vector(31 downto 0);

    begin

        CF : entity work.complete_F port map(right_input , key , answer_F);

        right_input <= input(31 downto 0);
        left_input <= input(63 downto 32);

        pr : process(input , key , right_input)
        begin
            right_output <= answer_F xor left_input;
            left_output <= right_input;
            output <= left_output & right_output;
        end process;

    end architecture;