-- Exemplo de uma porta AND
-- Autor: Marcelo Rezin
-- Data: 25/10/2019

-- Libs


-- Entidade
entity and_gate is
    
    -- Interface com o meio externo
    port(
        a, b    :   in  bit;
        z       :   out bit
    );
end and_gate;

--Arquitetura
architecture main of and_gate is
begin

    -- Implementação da lógica
    z <= a and b;

end main;
