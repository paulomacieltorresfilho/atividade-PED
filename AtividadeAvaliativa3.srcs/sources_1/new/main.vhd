
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC; -- 0: soma, 1: subtracao
           s : out STD_LOGIC_VECTOR (3 downto 0);
           ov: out STD_LOGIC);
end main;

architecture Behavioral of main is

begin


end Behavioral;
