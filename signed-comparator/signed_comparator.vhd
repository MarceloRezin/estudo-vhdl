-- Exemplo de um comparador de magnitude de sinal
-- Autor: Marcelo Rezin
-- Data: 14/11/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity signed_comparator is
    generic(
        n   :   integer:=4 --Quantidade de bits dos dados de entrada
    );
    
    port(
        a       :   in  std_logic_vector(n-1 downto 0);
        b       :   in  std_logic_vector(n-1 downto 0);
        a_gt_b  :   out std_logic
    );
end signed_comparator;

--Arquitetura
architecture rtl of signed_comparator is
begin
    p_signed_comparator :   process(a, b)
    begin
        if(signed(a) > signed(b)) then
            a_gt_b  <=  '1';
        else
            a_gt_b  <= '0';
        end if;
    end process p_signed_comparator;

end rtl;
