-- Autor: Marcelo Rezin
-- Data: 04/01/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity counter is
    generic(n   : integer :=4);
    port(
        clk, rst    :   in  std_logic;
        q           :   out std_logic_vector(n -1 downto 0)
    );
end counter;

architecture rtl of counter is
    
    signal q_temp    :   unsigned(n - 1 downto 0);

begin

    contagem : process(clk, rst)
    begin
        --Reset assincrono
        if rst = '1' then
            q_temp <= (others => '0');
        elsif falling_edge(clk) then
            q_temp <= q_temp + 1;
        end if;
    end process;

    q <= std_logic_vector(q_temp);

end rtl;