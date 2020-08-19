-- Autor: Marcelo Rezin
-- Data: 31/10/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity carry_ripple_adder is
    generic(n   :   integer :=  12); -- Qtd de bits das entradas e saída
    port(
        A, B        :   in  std_logic_vector(n - 1 downto 0);
        CARRY_IN    :   in  std_logic;
        
        S           :   out  std_logic_vector(n - 1 downto 0);
        CARRY_OUT   :   out std_logic
    );
end carry_ripple_adder;

--Arquitetura
architecture main of carry_ripple_adder is
    
    signal C    : std_logic_vector(0 to n);

begin

    CARRY_OUT <= C(n);
    C(0) <= CARRY_IN;

    --Intanciação com generate
    gen:    for i in 0 to n - 1 generate
        FA: entity work.full_adder(rtl) port map(A(i), B(i), C(i), S(i), C(i+1));
    end generate gen;

end main;