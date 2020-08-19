-- Exemplo de um somador completp
-- Autor: Marcelo Rezin
-- Data: 25/10/2016

entity somador_completo is
    port(
        A, B    :   in  bit;    -- entrada
        TE      :   in  bit;    -- Transporte de entrada
        S       :   out bit;    -- Soma
        TS      :   out bit     -- Transporte de saída
    );
end somador_completo;

architecture main of somador_completo is
begin
    S <= A xor B xor TE;
    TS <= (A and B) or (A and TE) or (B and TE);
end main;