
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0); 
           b : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC; -- 0: soma, 1: subtracao 0
           s : out STD_LOGIC_VECTOR (3 downto 0);
           ov: out STD_LOGIC);
end main;

architecture Behavioral of main is

    component soma1
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               s : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;
    
    component over1 
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           sel: in STD_LOGIC;
           over: out STD_LOGIC);
    end component;

    component not1
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           op : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal C: STD_LOGIC_VECTOR (1 to 4);
    signal b_n: STD_lOGIC_VECTOR (3 downto 0);
    signal s_3: STD_LOGIC;

begin

    seletor: not1 port map (a => b, op => sel, s => b_n);

    bit1: soma1 port map (a => a(0), b => b_n(0), cin => sel, s => s(0), cout => C(1));
    bit2: soma1 port map (a => a(1), b => b_n(1), cin => C(1), s => s(1), cout => C(2));
    bit3: soma1 port map (a => a(2), b => b_n(2), cin => C(2), s => s(2), cout => C(3));
    bit4: soma1 port map (a => a(3), b => b_n(3), cin => C(3), s => s_3, cout => C(4));
    s(3) <= s_3;
    overflow: over1 port map (a => a(3), b => b(3), s => s_3, sel => sel, over => ov);
    
end Behavioral;
