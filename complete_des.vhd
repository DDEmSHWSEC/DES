-- key rounds are wrong ||:


library ieee;
use ieee.std_logic_1164.all;

entity complete_des is
    port(
        output : out std_logic
        --ciphertext : out std_logic_vector(63 downto 0)
    );

end entity;

architecture p of complete_des is

    signal key : std_logic_vector(63 downto 0);
    signal plaintext : std_logic_vector(63 downto 0);
    signal ciphertext : std_logic_vector(63 downto 0);
    

    signal key_round1 : std_logic_vector(47 downto 0);
    signal key_round2 : std_logic_vector(47 downto 0);
    signal key_round3 : std_logic_vector(47 downto 0);
    signal key_round4 : std_logic_vector(47 downto 0);
    signal key_round5 : std_logic_vector(47 downto 0);
    signal key_round6 : std_logic_vector(47 downto 0);
    signal key_round7 : std_logic_vector(47 downto 0);
    signal key_round8 : std_logic_vector(47 downto 0);
    signal key_round9 : std_logic_vector(47 downto 0);
    signal key_round10 : std_logic_vector(47 downto 0);
    signal key_round11 : std_logic_vector(47 downto 0);
    signal key_round12 : std_logic_vector(47 downto 0);
    signal key_round13 : std_logic_vector(47 downto 0);
    signal key_round14 : std_logic_vector(47 downto 0);
    signal key_round15 : std_logic_vector(47 downto 0);
    signal key_round16 : std_logic_vector(47 downto 0);

    signal out_round1 : std_logic_vector(63 downto 0);
    signal out_round2 : std_logic_vector(63 downto 0);
    signal out_round3 : std_logic_vector(63 downto 0);
    signal out_round4 : std_logic_vector(63 downto 0);
    signal out_round5 : std_logic_vector(63 downto 0);
    signal out_round6 : std_logic_vector(63 downto 0);
    signal out_round7 : std_logic_vector(63 downto 0);
    signal out_round8 : std_logic_vector(63 downto 0);
    signal out_round9 : std_logic_vector(63 downto 0);
    signal out_round10 : std_logic_vector(63 downto 0);
    signal out_round11 : std_logic_vector(63 downto 0);
    signal out_round12 : std_logic_vector(63 downto 0);
    signal out_round13 : std_logic_vector(63 downto 0);
    signal out_round14 : std_logic_vector(63 downto 0);
    signal out_round15 : std_logic_vector(63 downto 0);
    signal out_round16 : std_logic_vector(63 downto 0);
    signal permutation_result : std_logic_vector(63 downto 0);

    signal mult_out : std_logic_vector(15 downto 0);    

    --for test final answer
    --signal correct_answer : std_logic_vector(63 downto 0);

    --for test when else |||:
    --signal test : std_logic_vector(1 downto 0);

    --for test key round1     it's work correctly at last (=
    --signal correct_key_round2 : std_logic_vector(47 downto 0);

    --for test round 
    signal correct_round1 : std_logic_vector(63 downto 0);

    --for test initial permutation
    --signal correct_initial : std_logic_vector(63 downto 0);

    begin

        --test <= "00";

        plaintext <= X"123456ABCD132536";
        key <= X"AABB09182736CCDD";
        --correct_answer <= X"C087A8D05F3A829C";

        --correct_key_round2 <= X"4568581ABCCE";

        --correct_answer <= X"C087A8D05F3A8298";

        correct_round1 <= X"18CA18CD5A78E394";

        --correct_initial <= X"14A7D67818CA18AD";

        CKG : entity work.complete_key_generation port map(key , key_round1 , key_round2 , key_round3 , key_round4 , key_round5 , key_round6 , key_round7 , key_round8 , key_round9 , key_round10 , key_round11 , key_round12 , key_round13 , key_round14 , key_round15 ,key_round16);
        IP : entity work.inital_permutation port map(plaintext , permutation_result);
        R1 : entity work.complete_round port map(permutation_result , key_round1 , out_round1);
        R2 : entity work.complete_round port map(out_round1 , key_round2 , out_round2);
        R3 : entity work.complete_round port map(out_round2 , key_round3 , out_round3);
        R4 : entity work.complete_round port map(out_round3 , key_round4 , out_round4);
        R5 : entity work.complete_round port map(out_round4 , key_round5 , out_round5);
        R6 : entity work.complete_round port map(out_round5 , key_round6 , out_round6);
        R7 : entity work.complete_round port map(out_round6 , key_round7 , out_round7);
        R8 : entity work.complete_round port map(out_round7 , key_round8 , out_round8);
        R9 : entity work.complete_round port map(out_round8 , key_round9 , out_round9);
        R10 : entity work.complete_round port map(out_round9 , key_round10 , out_round10);
        R11 : entity work.complete_round port map(out_round10 , key_round11 , out_round11);
        R12 : entity work.complete_round port map(out_round11 , key_round12 , out_round12);
        R13 : entity work.complete_round port map(out_round12 , key_round13 , out_round13);
        R14 : entity work.complete_round port map(out_round13 , key_round14 , out_round14);
        R15 : entity work.complete_round port map(out_round14 , key_round15 , out_round15);
        R16 : entity work.complete_round port map(out_round15 , key_round16 , out_round16);
        FP : entity work.final_permutation port map(out_round16 , ciphertext);

        --test for final answer
        --output <= '1' when ciphertext = correct_answer else 
        --'0' when ciphertext /= correct_answer;

        --test for key round 1       work correctly at last (=
        --output <= '1' when correct_key_round2 = key_round2 else
        --'0' when correct_key_round2 /= key_round2;

        --test for when else |||:
        --output <= '1' when test = "00" else
        --'0' when test /= "00";

        --test for round1
        output <= '1' when correct_round1 = out_round1 else
        '0' when correct_round1 /= out_round1;

        --test for initial permutation          it's work correctly at last ||:
        --output <= '1' when correct_initial = permutation_result else
        --'0' when correct_initial /= permutation_result;

    end architecture;