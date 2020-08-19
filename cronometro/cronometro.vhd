-- Autor: Marcelo Rezin
-- Data: 04/01/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity cronometro is
    port(
        start_flag  :   in  std_logic;   
        clock	    :   in  std_logic;
        out_sig     :   out std_logic
    );
end cronometro;

architecture main of cronometro is

    signal tmp_out :    std_logic := '0';

begin

    process(clock)
        variable count    :   integer range 0 to 50000000 :=0;
    begin
       if (clock'event and clock='1' and start_flag = '1') then
            count := count + 1;

            if count = 50000000 then
                count := 0; 
                tmp_out <= '1';
            end if;
            
            if (count = 12000000 and tmp_out = '1') then
                tmp_out <= '0';
            end if;
       end if;
    end process;

    out_sig     <=  tmp_out;

end main;
