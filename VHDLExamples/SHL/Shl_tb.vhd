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
use IEEE.STD_LOGIC_1164.ALL;

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
    signal inputSw : std_logic_vector (3 downto 0); 
    signal inputb : std_logic; 
    signal lresult : std_logic_vector (3 downto 0); 
    
    --the components of (DUT)
    component ShiftLeftRegister is 
        port (
            sw : in std_logic_vector (3 downto 0); 
            shlb : in std_logic; 
            result : out std_logic_vector
        );
    end component ShiftLeftRegister;
 
    begin 
    --instatiation of the DUT
        ShiftLeftRegister1: ShiftLeftRegister
            port map (
                sw => inputSw, 
                shlb => inputb, 
                result => lresult
                );
        process is 
        begin 
            inputsw <= "0001";
            inputb <= '0';
            wait for 10 ns; 
                inputb <= '1';
            wait for 10 ns; 
                inputsw <= "0111";
                inputb <= '0';
            wait for 10 ns; 
                inputb <= '1'; 
            wait for 10 ns;     
                inputb <= '0'; 
            wait for 10 ns;     
                inputb <= '1'; 
             wait for 10 ns;     
                inputb <= '0'; 
            wait for 10 ns;     
                inputb <= '1'; 
        end process; 
end Behavioral;
