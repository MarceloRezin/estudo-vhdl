-- Exemplo de um checador de BCD
-- Autor: Marcelo Rezin
-- Data: 09/11/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity bcd_checker is
    port(
        bcd         :   in  std_logic_vector(3 downto 0); -- Dígito BCD
        is_valid    :   out std_logic -- 0 para válido | 1 para inválido
    );
end bcd_checker;
        
--Arquitetura
architecture dataflow of bcd_checker is

    signal bcd_temp  :   unsigned(3 downto 0);

begin

    bcd_temp    <= unsigned(bcd);
    is_valid    <= '1' when (bcd_temp > 9) else '0';
    
end dataflow;
        