library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity over1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           sel: in STD_LOGIC;
           over: out STD_LOGIC);
end over1;

architecture Behavioral of over1 is

begin

    over <= (s and (not sel) and (not a) and (not b)) or 
    ((not s) and (not sel) and a and b) or
    ((not s) and sel and a and (not b)) or
    (s and sel and not a and b);

end Behavioral;
