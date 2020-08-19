-- Exemplo de um half_adder
-- Autor: Marcelo Rezin
-- Data: 31/10/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity half_adder is
    port(
        A, B    :   in  std_logic;
        SUM     :   out std_logic;
        CARRY   :   out std_logic
    );
end half_adder;

--Arquitetura
architecture dataflow of half_adder is

begin

    SUM     <=  A xor B;
    CARRY   <=  A and B;

end dataflow;