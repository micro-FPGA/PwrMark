----------------------------------------------------------------------------------
-- Company: MicroFPGA UG(h) 
-- Engineer: Antti Lukats
-- 
-- Create Date: 15.12.2025 08:35:19
-- Design Name: 
-- Module Name: pwrmark - Behavioral
-- Project Name: PwrMark
-- Target Devices: Any
-- Tool Versions: Any
-- Description: 
-- 
-- Dependencies: pwrmark_chain
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwrmark is
   generic (
        C_CHAIN_LENGTH : integer := 1000;
        C_NUM_CHAINS : integer := 50
   );  
   port ( clk : in STD_LOGIC;
           din : in STD_LOGIC;
           ctrl : in STD_LOGIC;
           dout : out STD_LOGIC);
end pwrmark;

architecture Behavioral of pwrmark is
signal chain : STD_LOGIC_VECTOR(C_NUM_CHAINS downto 0);

begin

chain(0) <= din;
dout <= chain(C_NUM_CHAINS);

-- generate chain of LUT+FlipFlop
CHAIN_gen: for i in 0 to C_NUM_CHAINS-1 generate
begin

  CHAIN_inst : entity work.pwrmark_chain
    generic map (C_CHAIN_LENGTH => C_CHAIN_LENGTH)
    port map (
      clk => clk,
      din => chain(i),
      ctrl => ctrl,
      dout => chain(i+1)
    );

end generate;

end Behavioral;
