-- Exemplo testbench
-- Autor: Marcelo Rezin
-- Data: 25/10/2019

-- Libs


-- Entidade
entity clk_rst_tb is
end clk_rst_tb;
    
--Arquitetura
architecture sim of clk_rst_tb is

    signal clk  :   bit :=  '0';
    signal rst  :   bit;

begin

    clk <=  not clk after 100 ns;
    rst <=  '0', '1' after 120 ns, '0' after 240 ns;
    
end sim;
    