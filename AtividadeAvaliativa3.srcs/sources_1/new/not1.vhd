library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not1 is
    Port ( a : in STD_LOGIC;
           s : out STD_LOGIC);
end not1;

architecture Behavioral of not1 is

begin

    s <= not a;

end Behavioral;
