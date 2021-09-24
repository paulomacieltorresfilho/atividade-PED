library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity over1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : in STD_LOGIC;
           over: out STD_LOGIC);
end over1;

architecture Behavioral of over1 is

begin

    over <= ((not a) and (not b) and s) or (a and b and not s);

end Behavioral;
