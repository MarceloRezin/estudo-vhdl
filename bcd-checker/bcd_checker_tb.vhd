-- Testbench para bcd_checker
-- Autor: Marcelo Rezin
-- Data: 09/11/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity bcd_checker_tb is
end bcd_checker_tb;
        
--Arquitetura
architecture sim of bcd_checker_tb is

    signal x            :   unsigned(3 downto 0) := "0000";
    signal bcd_tb       :   std_logic_vector(3 downto 0);
    signal is_valid_tb  :   std_logic;

begin

    DUT:    entity work.bcd_checker(dataflow) port map(bcd_tb, is_valid_tb);

    inc :   process is
    begin

        wait for 100 ns;
        x   <=  x + 1;
        
    end process;

    bcd_tb  <= std_logic_vector(x); 
    
end sim;
        