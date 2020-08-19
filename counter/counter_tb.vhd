-- Autor: Marcelo Rezin
-- Data: 04/01/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity counter_tb is
    generic(n   : integer :=4);
end counter_tb;

architecture sim of counter_tb is
    
    signal clk  : std_logic := '0';
    signal rst  : std_logic := '0';
    signal q  : std_logic_vector(n -1 downto 0) := (others => '0');

begin

    DUT : entity work.counter generic map(n) port map(clk, rst, q);
    
    clock   : process
    begin
        wait for 50 ns; --10 MHz
        clk <= not clk;
    end process;

    rest : process
    begin
        rst <= '0';
        wait for 120 ns;

        rst <= '1';
        wait for 120 ns;

        rst <= '0';
        wait;
    end process ; -- rest

end sim;