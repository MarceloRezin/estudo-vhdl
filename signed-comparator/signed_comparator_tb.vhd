-- Exemplo de um comparador de magnitude de sinal
-- Autor: Marcelo Rezin
-- Data: 14/11/2019

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity signed_comparator_tb is
    constant n  :   integer := 4;

    constant most_negative  : signed(n - 1 downto 0) := (n-1 => '1', others => '0');
    constant most_positive  : signed(n - 1 downto 0) := (n-1 => '0', others => '1');
end signed_comparator_tb;

--Arquitetura
architecture sim of signed_comparator_tb is

    signal a, b     :   std_logic_vector(n-1 downto 0) := std_logic_vector(most_negative);
    signal a_gt_b   :   std_logic;

begin

    DUT :   entity work.signed_comparator(rtl)
        generic map(n)
        port    map(a, b, a_gt_b);

    inc :   process is
        variable va, vb :   signed(n - 1 downto 0) := most_negative;
    begin
        wait for 100 ns;
        va  :=  va  + 1;
        if va = most_negative then
            vb  :=  vb + 1;
        end if;

        a   <=  std_logic_vector(va);
        b   <=  std_logic_vector(vb);

        if vb = most_positive then
            wait;
        end if;

    end process;

end sim;
