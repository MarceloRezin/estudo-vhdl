
-- Autor: Marcelo Rezin
-- Data: 13/04/2020

-- Libs
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade
entity detector_passagem_zero is
    port(
        passagem_zero       :   in  std_logic;   
        clock	            :   in  std_logic;
        out_display_unidade :   out std_logic_vector(6 downto 0);
        out_display_dezena  :   out std_logic_vector(6 downto 0);
        out_display_centena :   out std_logic_vector(6 downto 0);
        soma                :   out std_logic_vector(10 downto 0);
        count_out           :   out std_logic_vector(10 downto 0);
        z	                :   out std_logic   :=  '0'
    );
end detector_passagem_zero;

architecture main of detector_passagem_zero is

    component sete_seg_display is
        port(
            digito      :   in std_logic_vector(3 downto 0); -- valor entre 0 e 9
            out_display :   out std_logic_vector(6 downto 0)
        );
    end component sete_seg_display;
	 
	 component teste is
		port (
			CLOCK    : in  std_logic                     := 'X'; -- clk
			RESET    : in  std_logic                     := 'X'; -- reset
			CH0      : out std_logic_vector(11 downto 0);        -- CH0
			CH1      : out std_logic_vector(11 downto 0);        -- CH1
			CH2      : out std_logic_vector(11 downto 0);        -- CH2
			CH3      : out std_logic_vector(11 downto 0);        -- CH3
			CH4      : out std_logic_vector(11 downto 0);        -- CH4
			CH5      : out std_logic_vector(11 downto 0);        -- CH5
			CH6      : out std_logic_vector(11 downto 0);        -- CH6
			CH7      : out std_logic_vector(11 downto 0);        -- CH7
			ADC_SCLK : out std_logic;                            -- SCLK
			ADC_CS_N : out std_logic;                            -- CS_N
			ADC_DOUT : in  std_logic                     := 'X'; -- DOUT
			ADC_DIN  : out std_logic                             -- DIN
		);
	end component teste;

    signal unidade          :   unsigned(3 downto 0)    :=  (others => '0');
    signal dezena           :   unsigned(3 downto 0)    :=  (others => '0');
    signal centena          :   unsigned(3 downto 0)    :=  (others => '0');
    signal soma_tmp         :   unsigned(10 downto 0)   :=  (others => '0');
    signal deteccao_zero    :   std_logic               :=  '0';
    signal reset            :   std_logic               :=  '0';

begin

    soma        <=  std_logic_vector(soma_tmp);

    display_unidade : sete_seg_display port map (std_logic_vector(unidade), out_display_unidade);
    display_dezena  : sete_seg_display port map (std_logic_vector(dezena), out_display_dezena);
    display_centena : sete_seg_display port map (std_logic_vector(centena), out_display_centena);

	 
	 u0 : component teste
		port map (
			CLOCK    => CONNECTED_TO_CLOCK,    --                clk.clk
			RESET    => CONNECTED_TO_RESET,    --              reset.reset
			CH0      => CONNECTED_TO_CH0,      --           readings.CH0
			CH1      => CONNECTED_TO_CH1,      --                   .CH1
			CH2      => CONNECTED_TO_CH2,      --                   .CH2
			CH3      => CONNECTED_TO_CH3,      --                   .CH3
			CH4      => CONNECTED_TO_CH4,      --                   .CH4
			CH5      => CONNECTED_TO_CH5,      --                   .CH5
			CH6      => CONNECTED_TO_CH6,      --                   .CH6
			CH7      => CONNECTED_TO_CH7,      --                   .CH7
			ADC_SCLK => CONNECTED_TO_ADC_SCLK, -- external_interface.SCLK
			ADC_CS_N => CONNECTED_TO_ADC_CS_N, --                   .CS_N
			ADC_DOUT => CONNECTED_TO_ADC_DOUT, --                   .DOUT
			ADC_DIN  => CONNECTED_TO_ADC_DIN   --                   .DIN
		);
	 
	 
    process(clock)
        variable count          :   integer range 0 to 50000000 :=  0;
        -- variable count          :   integer range 0 to 1024 :=  0;
        variable unidade_tmp    :   unsigned(3 downto 0)    :=  (others => '0');
        variable dezena_tmp     :   unsigned(3 downto 0)    :=  (others => '0');
        variable centena_tmp    :   unsigned(3 downto 0)    :=  (others => '0');
    begin
       if rising_edge(clock) then
            count := count + 1;
            count_out   <=  std_logic_vector(to_unsigned(count, count_out'length));

            if count = 12000000 then
                z   <= '0';
            elsif count = 50000000 then
            --if count = 50 then
                count   :=  0; 

                unidade <=  unidade_tmp;
                dezena  <=  dezena_tmp;
                centena <=  centena_tmp;

                unidade_tmp :=  (others => '0');
                dezena_tmp  :=  (others => '0');
                centena_tmp :=  (others => '0');

                soma_tmp    <=  (others => '0');

                z   <=  '1';

            end if;

            if reset = '1' then
                reset   <=  '0';
            end if;

            if(deteccao_zero = '1') then
                reset   <=  '1';

                soma_tmp    <=  soma_tmp + 1;
				
                if(unidade_tmp=9) then
                    unidade_tmp :=  (others => '0');

                    if(dezena_tmp=9)then
                        dezena_tmp  :=  (others => '0');

                        centena_tmp :=  centena_tmp + 1;

                    else dezena_tmp  :=  dezena_tmp + 1;
                    end if;

                else unidade_tmp := unidade_tmp + 1;
                end if;
            end if;
       end if;

    end process;
    
    --process(passagem_zero, reset)
    --begin
        --if reset='1' then
         --   deteccao_zero   <=    '0';
        --elsif rising_edge(passagem_zero) then
        --    deteccao_zero   <=  '1';
       -- end if;

    --end process;
    
    process(passagem_zero, reset)
    variable count_2          :   integer range 0 to 50000000 :=  0;
    begin
        if reset='1' then
            deteccao_zero   <=    '0';
        elsif rising_edge(passagem_zero) then
            count_2 := count_2 + 1;

            if count_2 = 416550 then
                count_2 :=  0;
                deteccao_zero   <=  '1';
            end if;

        end if;

    end process;

end main;
