-- Autor: Marcelo Rezin
-- Data: 01/11/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity counter is
    port(
        clk, rst    :   in  std_logic;
        q           :   out std_logic_vector(3 downto 0)
    );
end counter;

architecture top of counter is
    
    signal x, q_temp    :   std_logic_vector(3 downto 0);

begin

    q <= q_temp;

    U1: entity  work.carry_ripple_4bit_adder(main)
        port map(
            A           =>  q_temp,
            B           =>  "0001",
            CARRY_IN    =>  '0',
            S           =>  X,
            CARRY_OUT   =>  open
        );

    U2: entity work.reg(behavioral)
        generic map(4) --Numero de bits
        port map(
            clk => clk,
            rst => rst,
            data => x,
            q => q_temp
        );

end top;