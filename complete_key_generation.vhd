library ieee;
use ieee.std_logic_1164.all;

entity complete_key_generation is
	port(
		key : in std_logic_vector(63 downto 0);
		key_round1 : out std_logic_vector(47 downto 0);
		key_round2 : out std_logic_vector(47 downto 0);
		key_round3 : out std_logic_vector(47 downto 0);
		key_round4 : out std_logic_vector(47 downto 0);
		key_round5 : out std_logic_vector(47 downto 0);
		key_round6 : out std_logic_vector(47 downto 0);
		key_round7 : out std_logic_vector(47 downto 0);
		key_round8 : out std_logic_vector(47 downto 0);
		key_round9 : out std_logic_vector(47 downto 0);
		key_round10 : out std_logic_vector(47 downto 0);
		key_round11 : out std_logic_vector(47 downto 0);
		key_round12 : out std_logic_vector(47 downto 0);
		key_round13 : out std_logic_vector(47 downto 0);
		key_round14 : out std_logic_vector(47 downto 0);
		key_round15 : out std_logic_vector(47 downto 0);
		key_round16 : out std_logic_vector(47 downto 0)
	);
end entity;

architecture p of complete_key_generation is

	signal parity_out : std_logic_vector(55 downto 0);
	signal shift1_round1 : std_logic_vector(27 downto 0);
	signal shift2_round1 : std_logic_vector(27 downto 0);
	signal shift1_round2 : std_logic_vector(27 downto 0);
	signal shift2_round2 : std_logic_vector(27 downto 0);
	signal shift1_round3 : std_logic_vector(27 downto 0);
	signal shift2_round3 : std_logic_vector(27 downto 0);
	signal shift1_round4 : std_logic_vector(27 downto 0);
	signal shift2_round4 : std_logic_vector(27 downto 0);
	signal shift1_round5 : std_logic_vector(27 downto 0);
	signal shift2_round5 : std_logic_vector(27 downto 0);
	signal shift1_round6 : std_logic_vector(27 downto 0);
	signal shift2_round6 : std_logic_vector(27 downto 0);
	signal shift1_round7 : std_logic_vector(27 downto 0);
	signal shift2_round7 : std_logic_vector(27 downto 0);
	signal shift1_round8 : std_logic_vector(27 downto 0);
	signal shift2_round8 : std_logic_vector(27 downto 0);
	signal shift1_round9 : std_logic_vector(27 downto 0);
	signal shift2_round9 : std_logic_vector(27 downto 0);
	signal shift1_round10 : std_logic_vector(27 downto 0);
	signal shift2_round10 : std_logic_vector(27 downto 0);
	signal shift1_round11 : std_logic_vector(27 downto 0);
	signal shift2_round11 : std_logic_vector(27 downto 0);
	signal shift1_round12 : std_logic_vector(27 downto 0);
	signal shift2_round12 : std_logic_vector(27 downto 0);
	signal shift1_round13 : std_logic_vector(27 downto 0);
	signal shift2_round13 : std_logic_vector(27 downto 0);
	signal shift1_round14 : std_logic_vector(27 downto 0);
	signal shift2_round14 : std_logic_vector(27 downto 0);
	signal shift1_round15 : std_logic_vector(27 downto 0);
	signal shift2_round15 : std_logic_vector(27 downto 0);
	signal shift1_round16 : std_logic_vector(27 downto 0);
	signal shift2_round16 : std_logic_vector(27 downto 0);
	
begin

	PT : entity work.parity_drop port map(key , parity_out);

	SH1R1: entity work.key_shift_left port map ("0000" , to_bitvector(parity_out(27 downto 0)) , shift1_round1);
	SH2R1: entity work.key_shift_left port map ("0000" , to_bitvector(parity_out(55 downto 28)) , shift2_round1);
	CDBR1: entity work.Compression_D_box port map (shift2_round1 & shift1_round1 , key_round1);
	
	SH1R2: entity work.key_shift_left port map ("0001" , to_bitvector(shift1_round1) , shift1_round2);
	SH2R2: entity work.key_shift_left port map ("0001", to_bitvector(shift2_round1) , shift2_round2);
	CDBR2: entity work.Compression_D_box port map (shift2_round2 & shift1_round2 , key_round2);
		
	SH1R3: entity work.key_shift_left port map ("0010" , to_bitvector(shift1_round2) , shift1_round3);
	SH2R3: entity work.key_shift_left port map ("0010" , to_bitvector(shift2_round2) , shift2_round3);
	CDBR3: entity work.Compression_D_box port map (shift2_round3 & shift1_round3 , key_round3);
		
	SH1R4: entity work.key_shift_left port map ("0011" , to_bitvector(shift1_round3) , shift1_round4);
	SH2R4: entity work.key_shift_left port map ("0011" , to_bitvector(shift2_round3) , shift2_round4);
	CDBR4: entity work.Compression_D_box port map (shift2_round4 & shift1_round4 , key_round4);
		
	SH1R5: entity work.key_shift_left port map ("0100" , to_bitvector(shift1_round4) , shift1_round5);
	SH2R5: entity work.key_shift_left port map ("0100" , to_bitvector(shift2_round4) , shift2_round5);
	CDBR5: entity work.Compression_D_box port map (shift2_round5 & shift1_round5 , key_round5);
		
	SH1R6: entity work.key_shift_left port map ("0101" , to_bitvector(shift1_round5) , shift1_round6);
	SH2R6: entity work.key_shift_left port map ("0101" , to_bitvector(shift2_round5) , shift2_round6);
	CDBR6: entity work.Compression_D_box port map (shift2_round6 & shift1_round6 , key_round6);
		
	SH1R7: entity work.key_shift_left port map ("0110" , to_bitvector(shift1_round6) , shift1_round7);
	SH2R7: entity work.key_shift_left port map ("0110" , to_bitvector(shift2_round6) , shift2_round7);
	CDBR7: entity work.Compression_D_box port map (shift2_round7 & shift1_round7 , key_round7);
		
	SH1R8: entity work.key_shift_left port map ("0111" , to_bitvector(shift1_round7) , shift1_round8);
	SH2R8: entity work.key_shift_left port map ("0111" , to_bitvector(shift2_round7) , shift2_round8);
	CDBR8: entity work.Compression_D_box port map (shift2_round8 & shift1_round8 , key_round8);
		
	SH1R9: entity work.key_shift_left port map ("1000" , to_bitvector(shift1_round8) , shift1_round9);
	SH2R9: entity work.key_shift_left port map ("1000" , to_bitvector(shift2_round8) , shift2_round9);
	CDBR9: entity work.Compression_D_box port map (shift2_round9 & shift1_round9 , key_round9);
		
	SH1R10: entity work.key_shift_left port map ("1001" , to_bitvector(shift1_round9) , shift1_round10);
	SH2R10: entity work.key_shift_left port map ("1001" , to_bitvector(shift2_round9) , shift2_round10);
	CDBR10: entity work.Compression_D_box port map (shift2_round10 & shift1_round10 , key_round10);
		
	SH1R11: entity work.key_shift_left port map ("1010" , to_bitvector(shift1_round10) , shift1_round11);
	SH2R11: entity work.key_shift_left port map ("1010" , to_bitvector(shift2_round10) , shift2_round11);
	CDBR11: entity work.Compression_D_box port map (shift2_round11 & shift1_round11 , key_round11);
		
	SH1R12: entity work.key_shift_left port map ("1011" , to_bitvector(shift1_round11) , shift1_round12);
	SH2R12: entity work.key_shift_left port map ("1011" , to_bitvector(shift2_round11) , shift2_round12);
	CDBR12: entity work.Compression_D_box port map (shift2_round12 & shift1_round12 , key_round12);
		
	SH1R13: entity work.key_shift_left port map ("1100" , to_bitvector(shift1_round12) , shift1_round13);
	SH2R13: entity work.key_shift_left port map ("1100" , to_bitvector(shift2_round12) , shift2_round13);
	CDBR13: entity work.Compression_D_box port map (shift2_round13 & shift1_round13 , key_round13);
		
	SH1R14: entity work.key_shift_left port map ("1101" , to_bitvector(shift1_round13) , shift1_round14);
	SH2R14: entity work.key_shift_left port map ("1101" , to_bitvector(shift2_round13) , shift2_round14);
	CDBR14: entity work.Compression_D_box port map (shift2_round14 & shift1_round14 , key_round14);
		
	SH1R15: entity work.key_shift_left port map ("1110" , to_bitvector(shift1_round14) , shift1_round15);
	SH2R15: entity work.key_shift_left port map ("1110" , to_bitvector(shift2_round14) , shift2_round15);
	CDBR15: entity work.Compression_D_box port map (shift2_round15 & shift1_round15 , key_round15);
		
	SH1R16: entity work.key_shift_left port map ("1111" , to_bitvector(shift1_round15) , shift1_round16);
	SH2R16: entity work.key_shift_left port map ("1111" , to_bitvector(shift2_round15) , shift2_round16);
	CDBR16: entity work.Compression_D_box port map (shift2_round16 & shift1_round16 , key_round16);

end p;