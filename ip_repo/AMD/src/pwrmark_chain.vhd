----------------------------------------------------------------------------------
-- Company: MicroFPGA UG(h)
-- Engineer: Antti Lukats 
-- 
-- Create Date: 06.06.2026 10:44:22
-- Design Name: 
-- Module Name: pwrmark_chain - Behavioral
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

entity pwrmark_chain is
   generic (
        C_CHAIN_LENGTH : integer := 1000
   );  
   port ( clk : in STD_LOGIC;
           din : in STD_LOGIC;
           ctrl : in STD_LOGIC;
           dout : out STD_LOGIC);
end pwrmark_chain;

architecture Behavioral of pwrmark_chain is

signal chain : STD_LOGIC_VECTOR(C_CHAIN_LENGTH downto 0);

begin

chain(0) <= din;
dout <= chain(C_CHAIN_LENGTH);

-- generate chain of LUT+FlipFlop
CHAIN_gen: for i in 0 to C_CHAIN_LENGTH-1 generate
begin

process (clk)
begin
   if clk'event and clk='1' then
      if ctrl='1' then
        chain(i+1) <= not chain(i+1);
      else 
        chain(i+1) <= chain(i);
      end if;   
   end if;
end process;
    
end generate;

end Behavioral;
