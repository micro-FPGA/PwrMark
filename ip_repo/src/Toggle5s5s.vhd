----------------------------------------------------------------------------------
-- Company: MicroFPGA UG(h) 
-- Engineer: Antti Lukats
-- 
-- Create Date: 18.06.2026 13:03:36
-- Design Name: 
-- Module Name: Toggle5s5s - Behavioral
-- Project Name: PwrMark
-- Target Devices: Any
-- Tool Versions: Any
-- Description: 5s on 5s off blinker
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
use IEEE.NUMERIC_STD.ALL;

entity Toggle5s5s is
    generic (
        C_FREQUENCY : integer := 100_000_000  -- default 100MHz
    );
    port (
        clk  : in  STD_LOGIC;
        ctrl : out STD_LOGIC
    );
end Toggle5s5s;

architecture Behavioral of Toggle5s5s is
    constant C_COUNT_MAX : integer := C_FREQUENCY * 5 - 1;
    signal counter       : integer range 0 to C_COUNT_MAX := 0;
    signal toggle        : STD_LOGIC := '0';
begin
    ctrl <= toggle;

    process(clk)
    begin
        if clk'event and clk = '1' then
            if counter = C_COUNT_MAX then
                counter <= 0;
                toggle  <= not toggle;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

end Behavioral;

