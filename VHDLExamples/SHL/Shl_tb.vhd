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

entity Shl_tb is
end Shl_tb;

architecture Behavioral of Shl_tb is
  -- the signals 
    signal inputSw : unsigned (3 downto 0); 
    signal inputa : unsigned (1 downto 0);
    signal lresult : unsigned (3 downto 0); 
    
    --the components of (DUT)
    component ShiftLeftRegister is 
        port (
        sw : in unsigned (3 downto 0);
        shla : in unsigned (1 downto 0);
        result : out unsigned (3 downto 0)
        );
    end component ShiftLeftRegister;
 
    begin 
    --instatiation of the DUT
        ShiftLeftRegister1: ShiftLeftRegister
            port map (
                sw => inputSw, 
                shla => inputa, 
                result => lresult
                );
        process is 
        begin 
            inputsw <= "0001";
            inputa <= "00";
            wait for 10 ns; 
                inputa <= "01";
            wait for 10 ns; 
                inputa <= "10";
            wait for 10 ns; 
                inputa <= "11"; 
            wait for 10 ns;  
                inputsw <= "1010";
                inputa <= "00"; 
            wait for 10 ns;     
                inputa <= "01"; 
             wait for 10 ns;     
                inputa <= "10"; 
            wait for 10 ns;     
                inputa <= "11"; 
        end process; 
end Behavioral;
