----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 03:36:54 PM
-- Design Name: 
-- Module Name: ANDGate_tb - Behavioral
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

entity ANDGate_tb is
end ANDGate_tb;

architecture Behavioral of ANDGate_tb is
    -- the signals 
    signal input1 : std_logic := '0'; 
    signal input2 : std_logic := '0'; 
    signal result : std_logic; 
    
    --the components of (DUT)
    component ANDGate is 
        port (
            a : in std_logic; 
            b : in std_logic; 
            c : out std_logic
        );
    end component ANDGate;
 
    begin 
    --instatiation of the DUT
        ANDGateInst: ANDGate
            port map (
                a => input1, 
                b => input2, 
                c => result
                );
        process is 
        begin 
            input1 <= '0';
            input2 <= '0'; 
            wait for 10 ns; 
            input1 <= '1';
            input2 <= '0'; 
            wait for 10 ns; 
            input1 <= '0';
            input2 <= '1'; 
            wait for 10 ns; 
            input1 <= '1';
            input2 <= '1'; 
            wait for 10 ns; 
        end process; 
    end Behavioral;
