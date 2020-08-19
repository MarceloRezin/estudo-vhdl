-- Exemplo testbench
-- Autor: Marcelo Rezin
-- Data: 25/10/2019

-- Libs


-- Entidade
entity hello_tb is
end hello_tb;

--Arquitetura
architecture sim of hello_tb is
begin

    process is
        begin
            report "Hello World!";
            wait;
    end process;

end sim;
