US BD05: 
-- ALL OPERATIONS
Select 
    e.designacao as parcela, 
    concat(concat(p.nome_comum, ' '), p.variedade) as produto, 
    Sum(o.quantidade) as "Quantidade de Produtos Colhidos",
    to_char(o.data, 'yyyy-mm-dd') as "Data da Colheita"
from Operacoes o 
left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id 
left join Plantas p on o.planta_id = p.id 
group by e.designacao, p.nome_comum, p.variedade, o.operacao, o.data 
having o.operacao = 'Colheita' 
order by parcela, produto;

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Quantidade_Produtos_By_Parcela_And_Timeframe(
    exploracao_agricola_name IN EXPLORACAOAGRICOLA.DESIGNACAO%TYPE,
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        SELECT
            E.DESIGNACAO AS PARCELA,
            P.NOME_COMUM || ' ' || P.VARIEDADE AS PRODUTO,
            SUM(o.quantidade) AS "Quantidade de Produtos Colhidos"
        FROM Operacoes O
        LEFT JOIN ExploracaoAgricola E ON O.EXPLORACAO_AGRICOLA_ID = E.ID
        LEFT JOIN Plantas P ON O.PLANTA_ID = P.ID
        WHERE E.DESIGNACAO = exploracao_agricola_name
            AND O.data BETWEEN start_date AND end_date
        GROUP BY E.DESIGNACAO, P.NOME_COMUM, P.VARIEDADE, O.OPERACAO
        HAVING O.OPERACAO = 'Colheita'
        ORDER BY PARCELA, PRODUTO;

    operacoes_rec operacoes_cursor%ROWTYPE;

BEGIN
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec.PARCELA || ' - ' || operacoes_rec.PRODUTO || ' - ' || operacoes_rec."Quantidade de Produtos Colhidos");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
END Get_Quantidade_Produtos_By_Parcela_And_Timeframe;

-- Testsing
DECLARE
    exploracao_name EXPLORACAOAGRICOLA.DESIGNACAO%TYPE := 'Horta Nova';
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Quantidade_Produtos_By_Parcela_And_Timeframe(exploracao_name, start_date, end_date);
END;


US BD06:
-- ALL OPERATIONS
Select 
    e.designacao as parcela, 
    f.designacao as "Fator de Producao", 
    count(*) as "Número de Aplicacoes de Fatores de Producao",
    to_char(o.data, 'yyyy-mm-dd') as "Data da Aplicacao"
from Operacoes o
left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id
left join FatorProducao f on o.fator_producao_id = f.id
group by e.designacao, f.designacao, o.operacao, o.data
having o.operacao = 'Aplicacao'
order by parcela, "Fator de Producao";

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Numero_Aplicacoes_Fatores_Producao_By_Parcela_And_Timeframe(
    exploracao_agricola_name IN EXPLORACAOAGRICOLA.DESIGNACAO%TYPE,
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        SELECT
            E.DESIGNACAO AS PARCELA,
            F.DESIGNACAO AS "Fator de Producao",
            COUNT(*) AS "Número de Aplicacoes de Fatores de Producao"
        FROM Operacoes O
        LEFT JOIN ExploracaoAgricola E ON O.EXPLORACAO_AGRICOLA_ID = E.ID
        LEFT JOIN FatorProducao F ON O.FATOR_PRODUCAO_ID = F.ID
        WHERE E.DESIGNACAO = exploracao_agricola_name
            AND O.data BETWEEN start_date AND end_date
        GROUP BY E.DESIGNACAO, F.DESIGNACAO, O.OPERACAO
        HAVING O.OPERACAO = 'Aplicacao'
        ORDER BY PARCELA, "Fator de Producao";

    operacoes_rec operacoes_cursor%ROWTYPE;
BEGIN
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec.PARCELA || ' - ' || operacoes_rec."Fator de Producao" || ' - ' || operacoes_rec."Número de Aplicacoes de Fatores de Producao");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
END Get_Numero_Aplicacoes_Fatores_Producao_By_Parcela_And_Timeframe;

-- Testsing
DECLARE
    exploracao_name EXPLORACAOAGRICOLA.DESIGNACAO%TYPE := 'Horta nova';
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Numero_Aplicacoes_Fatores_Producao_By_Parcela_And_Timeframe(exploracao_name, start_date, end_date);
END;





US07:
-- ALL OPERATIONS
Select
    e.designacao as PARCELA,
    o.operacao as OPERACAO,
    count(*) as "Número de Operações",
from Operacoes o
left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id
group by e.designacao, o.operacao
order by "Número de Operações" desc;

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Numero_Operacoes_By_Parcela_And_Timeframe(
    exploracao_agricola_name IN EXPLORACAOAGRICOLA.DESIGNACAO%TYPE,
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        Select
            e.designacao as PARCELA,
            o.operacao as OPERACAO,
            count(*) as "Número de Operações"
        from Operacoes o
        left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id
        WHERE E.DESIGNACAO = exploracao_agricola_name
            AND O.data BETWEEN start_date AND end_date
        group by e.designacao, o.operacao
        order by "Número de Operações" desc;

    operacoes_rec operacoes_cursor%ROWTYPE;

BEGIN
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec.PARCELA || ' - ' || operacoes_rec.OPERACAO || ' - ' || operacoes_rec."Número de Operações");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
END Get_Numero_Operacoes_By_Parcela_And_Timeframe;

-- Testsing
DECLARE
    exploracao_name EXPLORACAOAGRICOLA.DESIGNACAO%TYPE := 'Horta Nova';
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Numero_Operacoes_By_Parcela_And_Timeframe(exploracao_name, start_date, end_date);
END;


US BD08:
-- ALL OPERATIONS
Select 
    f.designacao as "Fator de Producao",
    count(*) as "Número de Aplicacoes de Fatores de Producao"
from FatorProducao f
left join Operacoes o on f.id = o.fator_producao_id
group by f.designacao
order by "Número de Aplicacoes de Fatores de Producao" desc;

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Numero_Aplicacoes_Fatores_Producao(
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        Select 
            f.designacao as "Fator de Producao",
            count(*) as "Número de Aplicacoes de Fatores de Producao"
        from FatorProducao f
        left join Operacoes o on f.id = o.fator_producao_id
        WHERE O.data BETWEEN start_date AND end_date
        group by f.designacao
        order by "Número de Aplicacoes de Fatores de Producao" desc;

    operacoes_rec operacoes_cursor%ROWTYPE;
begin
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec."Fator de Producao" || ' - ' || operacoes_rec."Número de Aplicacoes de Fatores de Producao");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
end Get_Numero_Aplicacoes_Fatores_Producao;

-- Testsing
DECLARE
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Numero_Aplicacoes_Fatores_Producao(start_date, end_date);
END;



US09:
-- ALL OPERATIONS
Select 
    f.designacao as "Fator de Producao",
    count(*) as "Número de Aplicacoes de Fatores de Producao"
from FatorProducao f
left join Operacoes o on f.id = o.fator_producao_id
group by f.designacao
order by "Número de Aplicacoes de Fatores de Producao" desc;

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Numero_Aplicacoes_Fatores_Producao(
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        Select 
            f.designacao as "Fator de Producao",
            count(*) as "Número de Aplicacoes de Fatores de Producao"
        from FatorProducao f
        left join Operacoes o on f.id = o.fator_producao_id
        WHERE O.data BETWEEN start_date AND end_date
        group by f.designacao
        order by "Número de Aplicacoes de Fatores de Producao" desc;

    operacoes_rec operacoes_cursor%ROWTYPE;
begin
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec."Fator de Producao" || ' - ' || operacoes_rec."Número de Aplicacoes de Fatores de Producao");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
end Get_Numero_Aplicacoes_Fatores_Producao;

-- Testsing
DECLARE
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Numero_Aplicacoes_Fatores_Producao(start_date, end_date);
END;


US BD10:
-- ALL OPERATIONS
Select 
    e.designacao as parcela, 
    count(*) as "Número de Operações de Rega"
from Operacoes o
left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id
group by e.designacao, o.operacao
having o.operacao = 'Rega'
order by "Número de Operações de Rega" desc;

-- Procedure
CREATE OR REPLACE PROCEDURE Get_Numero_Operacoes_Rega_By_Parcela_And_Timeframe(
    exploracao_agricola_name IN EXPLORACAOAGRICOLA.DESIGNACAO%TYPE,
    start_date IN DATE,
    end_date IN DATE
) IS
    -- Declare a cursor for the SELECT statement
    CURSOR operacoes_cursor IS
        Select 
            e.designacao as parcela, 
            count(*) as "Número de Operações de Rega"
        from Operacoes o
        left join ExploracaoAgricola e on o.exploracao_agricola_id = e.id
        WHERE E.DESIGNACAO = exploracao_agricola_name
            AND O.data BETWEEN start_date AND end_date
        group by e.designacao, o.operacao
        having o.operacao = 'Rega'
        order by "Número de Operações de Rega" desc;

    operacoes_rec operacoes_cursor%ROWTYPE;
begin
    -- Open the cursor
    OPEN operacoes_cursor;

    -- Fetch and process the results
    LOOP
        FETCH operacoes_cursor INTO operacoes_rec;
        EXIT WHEN operacoes_cursor%NOTFOUND;

        -- You can perform further processing or output here
        DBMS_OUTPUT.PUT_LINE(operacoes_rec.parcela || ' - ' || operacoes_rec."Número de Operações de Rega");
    END LOOP;

    -- Close the cursor
    CLOSE operacoes_cursor;
end Get_Numero_Operacoes_Rega_By_Parcela_And_Timeframe;

-- Testsing
DECLARE
    exploracao_name EXPLORACAOAGRICOLA.DESIGNACAO%TYPE := 'Horta nova';
    start_date DATE := TO_DATE('2021-01-01', 'YYYY-MM-DD');
    end_date DATE := TO_DATE('2029-12-31', 'YYYY-MM-DD');
BEGIN
    Get_Numero_Operacoes_Rega_By_Parcela_And_Timeframe(exploracao_name, start_date, end_date);
END;