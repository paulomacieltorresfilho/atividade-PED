library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not1 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           op : in STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end not1;

architecture Behavioral of not1 is

begin

    s(0) <= op xor a(0);
    s(1) <= op xor a(1);
    s(2) <= op xor a(2);
    s(3) <= op xor a(3);
    
end Behavioral;
