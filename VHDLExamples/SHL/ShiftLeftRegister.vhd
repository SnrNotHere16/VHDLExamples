----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2020 09:03:32 AM
-- Design Name: 
-- Module Name: ShiftLeftRegister - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL,
IEEE.Numeric_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftLeftRegister is
  Port (
        sw : in unsigned (3 downto 0);
        shla : in unsigned (1 downto 0);
        result : out unsigned (3 downto 0)
             );
end ShiftLeftRegister;

architecture Behavioral of ShiftLeftRegister is

begin
    process(sw, shla)
    begin 
        case shla is
            when "00" => result <= sw sll 0; 
            when "01" => result <= sw sll 1; 
            when "10" => result <= sw sll 2; 
            when "11" => result <= sw sll 3; 
            when others => report "Fail" severity failure;
         end case;
    end process;    
    

end Behavioral;
