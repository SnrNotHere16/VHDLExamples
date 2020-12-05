----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2020 02:12:31 PM
-- Design Name: 
-- Module Name: Shl_tb - Behavioral
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

entity ShiftRotate_tb is
end ShiftRotate_tb;

architecture Behavioral of ShiftRotate_tb is
  -- the signals 
    signal inputA :  unsigned (7 downto 0); 
    signal OY1, OY2, OY3,
           OY4, OY5, OY6 : unsigned (7 downto 0); 
    
    --the components of (DUT)
    component ShiftRotate is 
  Port (A: in unsigned (7 downto 0);
        Y1, Y2, 
        Y3, Y4, 
        Y5, Y6: out unsigned (7 downto 0)
        );
    end component ShiftRotate;
 
    begin 
    --instatiation of the DUT
        ShiftRotateRegister1: ShiftRotate
            port map (
                A => inputA, 
                Y1 => OY1,
                Y2 => OY2, 
                Y3 => OY3, 
                Y4 => OY4,
                Y5 => OY5, 
                Y6 => OY6
                );
        process is 
        begin 
            inputA <= "00000001";
            wait for 10 ns; 
            inputA <= "00001100";
            wait for 10 ns; 
                inputA <= "00001101";
            wait for 10 ns; 
                inputA <= "00001111";
            wait for 10 ns;     
                inputA <= "00001111";
            wait for 10 ns;     
                inputA <= "01000111";
             wait for 10 ns;     
                inputA <= "01100111";
            wait for 10 ns;     
                inputA <= "01110111";
        end process; 
end Behavioral;
