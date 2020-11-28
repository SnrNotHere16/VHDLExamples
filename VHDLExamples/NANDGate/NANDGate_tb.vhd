----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2020 04:19:55 PM
-- Design Name: 
-- Module Name: NANDGate_tb - Behavioral
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

entity NANDGate_tb is
end NANDGate_tb;

architecture Behavioral of NANDGate_tb is
    signal input1: std_logic := '0';
    signal input2: std_logic := '0'; 
    signal result: std_logic; 
    --the component DUT 
    component NANDGate is 
    port (
        a : in std_logic; 
        b : in std_logic; 
        c : out std_logic
    );
    end component NANDGate; 
begin
    --initialize the instance 
    NANDGateInst: NANDGate 
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
