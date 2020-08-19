-- Autor: Marcelo Rezin
-- Data: 04/01/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity sete_seg_test is
    port(
        add_sig	    :   in  std_logic;
        out_sig     :   out std_logic := '0'
        --out_disp    :   out std_logic_vector(5 downto 0)
    );
end sete_seg_test;

architecture main of sete_seg_test is

    signal s_temp    :   integer range 0 to 3 :=0;
    --signal out_tmp   :  std_logic := '0';

begin

    process(add_sig)
    begin
	 
       if (add_sig'event and add_sig = '1') then
            s_temp <= s_temp + 1;
       end if;

        if s_temp >= 2 then
				report "OI";
            out_sig <= '1';
			else
				out_sig <= '0';
        end if;

    end process;

    --out_sig <= out_tmp;
    
end main;
