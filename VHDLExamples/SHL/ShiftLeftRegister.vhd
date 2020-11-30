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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftLeftRegister is
  Port (
        sw : in std_logic_vector(3 downto 0);
        shlb : in std_logic;
        result : out std_logic_vector (3 downto 0)
             );
end ShiftLeftRegister;

architecture Behavioral of ShiftLeftRegister is
begin
    process(sw, shlb)
    begin 
        if (shlb = '1') then 
            result(0) <= '0';
            result (1) <= sw(0);
            result (2) <= sw(1);
            result (3) <= sw(2);
      else 
            result <= sw;
      end if;
    end process;    
    

end Behavioral;
