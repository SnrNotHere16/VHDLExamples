----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 04:08:42 PM
-- Design Name: 
-- Module Name: NANDGate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NANDGate is
 Port ( 
    a : in std_logic;
    b : in std_logic; 
    c : out std_logic
    );
end NANDGate;

architecture Behavioral of NANDGate is
    signal result: std_logic;
begin
    result <= not(a and b); 
    c <= result; 

end Behavioral;
