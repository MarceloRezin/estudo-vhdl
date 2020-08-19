-- Exibe em um display de sete segmentos de anodo comum o dígito bcd recebido
-- Autor: Marcelo Rezin
-- Data: 13/04/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity sete_seg_display is
    port(
        digito      :   in std_logic_vector(3 downto 0); -- valor entre 0 e 9
        out_display :   out std_logic_vector(6 downto 0)
    );
end sete_seg_display;

architecture behavioral of sete_seg_display is

    signal digito_temp  :   unsigned(3 downto 0);

begin

    digito_temp <=  unsigned(digito);

    out_display <=  "1000000" when (digito_temp = 0) else
                    "1111001" when (digito_temp = 1) else
                    "0100100" when (digito_temp = 2) else
                    "0110000" when (digito_temp = 3) else
                    "0011001" when (digito_temp = 4) else
                    "0010010" when (digito_temp = 5) else
                    "0000010" when (digito_temp = 6) else
                    "1111000" when (digito_temp = 7) else
                    "0000000" when (digito_temp = 8) else
                    "0010000" when (digito_temp = 9) else
                    "1111111";

end behavioral;