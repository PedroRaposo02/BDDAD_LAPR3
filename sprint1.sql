US BD05: 
Select 
    e.designacao as parcela, 
    concat(concat(p.nome_comum, ' '), p.variedade) as produto, 
    Count(*) as "Quantidade de Produtos Colhidos" 
from Operacoes o 
left join ExploracaoAgricola e on o.exploracao_agricula_id = e.id 
left join Plantas p on o.planta_id = p.id 
group by e.designacao, p.nome_comum, p.variedade, o.operacao 
having o.operacao = 'Colheita' 
order by parcela, produto;

CREATE OR REPLACE PROCEDURE GetOperacoesByExploracaoAndTimeframe(
    exploracao_agricola_id IN NUMBER,
    start_date IN DATE,
    end_date IN DATE
) AS
BEGIN
    SELECT
        E.DESIGNACAO AS PARCELA,
        CONCAT(CONCAT(P.NOME_COMUM, ' '), P.VARIEDADE) AS PRODUTO,
        COUNT(*) AS "Quantidade de Produtos Colhidos"
    FROM Operacoes O
    LEFT JOIN ExploracaoAgricola E ON O.EXPLORACAO_AGRICULA_ID = E.ID
    LEFT JOIN Plantas P ON O.PLANTA_ID = P.ID
    WHERE E.ID = exploracao_agricola_id
        AND O.data BETWEEN start_date AND end_date
    GROUP BY E.DESIGNACAO, P.NOME_COMUM, P.VARIEDADE, O.OPERACAO
    HAVING O.OPERACAO = 'Colheita'
    ORDER BY PARCELA, PRODUTO;
END GetOperacoesByExploracaoAndTimeframe;