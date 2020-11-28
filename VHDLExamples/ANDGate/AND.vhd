library ieee;
use ieee.std_logic_1164.all;
 
entity ANDGate is 
    port (
        a : in std_logic;
        b : in std_logic; 
        c : out std_logic
    );
end ANDGate;

architecture ex of ANDGate is 
    signal result: std_logic;
begin 
    result <= a and b;
    c <= result; 

end ex;