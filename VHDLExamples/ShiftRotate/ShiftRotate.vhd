----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2020 05:10:32 PM
-- Design Name: 
-- Module Name: ShiftRotate - Behavioral
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

entity ShiftRotate is
  Port (A: in unsigned (7 downto 0);
        Y1, Y2, 
        Y3, Y4, 
        Y5, Y6: out unsigned (7 downto 0)
        );
end ShiftRotate;

architecture Behavioral of ShiftRotate is
    constant B: integer:=1; 
begin
  process(A) begin 
    Y1 <= A sll B; 
    Y2 <= A srl B; 
    Y3 <= A rol B; 
    Y4 <= A ror B;
    
 end process;

end Behavioral;
