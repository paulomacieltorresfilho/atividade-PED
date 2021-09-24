library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_tb is
end main_tb;

architecture Behavioral of main_tb is
    
    component main
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0); 
           b : inout STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           s : inout STD_LOGIC_VECTOR (3 downto 0);
           ov: out STD_LOGIC);
    end component;
    
    signal s_a, s_b, s_s: STD_LOGIC_VECTOR (3 downto 0);
    signal s_sel, s_ov: STD_LOGIC;
    
begin

    uut: main port map (a => s_a, b => s_b, sel => s_sel, s => s_s, ov => s_ov);
    
    stimulus: process 
    begin
    
        -- caso 1
        s_a <= "0010"; s_b <= "0011"; s_sel <= '0'; wait for 10 ns;
        -- caso 2
        s_a <= "0110"; s_b <= "0101"; s_sel <= '0'; wait for 10 ns;
        -- caso 3
        s_a <= "1101"; s_b <= "0011"; s_sel <= '0'; wait for 10 ns;
        -- caso 4
        s_a <= "1011"; s_b <= "0011"; s_sel <= '0'; wait for 10 ns;
        -- caso 5
        s_a <= "1011"; s_b <= "1010"; s_sel <= '0'; wait for 10 ns;
        -- caso 6 
        s_a <= "0101"; s_b <= "1110"; s_sel <= '1'; wait for 10 ns;
        -- caso 7 
        s_a <= "0111"; s_b <= "1101"; s_sel <= '1'; wait for 10 ns;
           
    end process;
end Behavioral;
