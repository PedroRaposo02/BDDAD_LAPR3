/*
Critérios de aceitação das USBD11 a USBD15 (atualizado em 10/11/2023):

Conforme aplicável, a parcela, operação, planta, fruto, fator de produção, etc., têm de existir.
Não é possível registar operações no futuro (não usar SYSDATE numa função, que ela deixa de ser testável!).
Não é possível registar operações que envolvam área superior à de uma dada parcela.
Não é possível registar operações que envolvam um número de plantas permanentes superior à existente na parcela.
Não é possível registar alguns tipos de operações (e.g. colheita, poda, etc.) que envolvam um plantas permanentes ou temporárias que não existem na parcela.


As user stories UDBD11 a USBD15 requerem a introdução de dados na BD, sendo necessário ter feedback sobre o sucesso da operação. Têm de ser implementadas por funções ou por procedimentos.

As user stories UDBD16 a USBD20 requerem a implementação de uma função que retorna um cursor. A demonstração incluirá duas situações para cada US:
Caso de "sucesso", em que são retornados dados
Caso de "insucesso", em que não há dados que cumprem os critérios dados
*/

# Gestao de Exploracao Agricola

/* enmtrar com nome comum e variedade para descobrir exploracao_agricola_id */

US12:Como Gestor Agricola, quero registar uma operacao de monda
/*procedure*/
CREATE OR REPLACE PROCEDURE registar_monda (operacao IN VARCHAR2, modo IN VARCHAR2, data IN DATE, quantidade IN NUMBER, unidades IN VARCHAR2, fator_producao_id IN NUMBER, exploracao_agricola_id IN NUMBER, planta_id IN NUMBER) AS
BEGIN
    INSERT INTO Operacoes (operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id) VALUES (operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id);
    COMMIT;
END;
/*test procedure*/
DECLARE
    operacao VARCHAR2(20) := 'Monda';
    modo VARCHAR2(20) := '';
    data DATE := TO_DATE('2021-10-12', 'YYYY-MM-DD');
    quantidade NUMBER := 950.0;
    unidades VARCHAR2(20) := 'kg';
    fator_producao_id NUMBER := NULL;
    exploracao_agricola_id NUMBER := 104;
    planta_id NUMBER;
BEGIN
    SELECT id INTO planta_id FROM Plantas WHERE nome_comum='Macieira' AND variedade='Fuji';
    registar_monda(operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id);
END;
/*select inserted operacao de monda*/
SELECT * FROM Operacoes WHERE operacao='Monda' AND planta_id=(SELECT id FROM Plantas WHERE nome_comum='Macieira' AND variedade='Fuji');


US14:Como Gestor Agricola, quero registar uma operacao de aplicacao de fator de producao
/*procedure*/
CREATE OR REPLACE PROCEDURE registar_aplicacao_fator_producao (operacao IN VARCHAR2, modo IN VARCHAR2, data IN DATE, quantidade IN NUMBER, unidades IN VARCHAR2, fator_producao_id IN NUMBER, exploracao_agricola_id IN NUMBER, planta_id IN NUMBER) AS
BEGIN
    INSERT INTO Operacoes (operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id) VALUES (operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id);
    COMMIT;
END;
/*test procedure*/
DECLARE
    operacao VARCHAR2(30) := 'Aplicacao Fitofarmaco';
    modo VARCHAR2(20) := '';
    data DATE := TO_DATE('2021-10-12', 'YYYY-MM-DD');
    quantidade NUMBER := 950.0;
    unidades VARCHAR2(20) := 'kg';
    fator_producao_id NUMBER;
    exploracao_agricola_id NUMBER := 104;
    planta_id NUMBER;
BEGIN
    SELECT id INTO fator_producao_id FROM FatorProducao WHERE designacao='Calda Bordalesa ASCENZA'; 
    SELECT id INTO planta_id FROM Plantas WHERE nome_comum='Macieira' AND variedade='Fuji';
    registar_aplicacao_fator_producao(operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id);
END;
/*select inserted operacao de aplicacao de fator de producao*/
SELECT * FROM Operacoes WHERE operacao='Aplicacao Fitofarmaco' AND planta_id=(SELECT id FROM Plantas WHERE nome_comum='Macieira' AND variedade='Fuji');


US16:Como Gestor Agricola, pretendo obter a lista dos produtos colhidos numa dada parcela, para cada especie, num dado intervalo de tempo
/*cursor*/
CREATE OR REPLACE FUNCTION lista_produtos_colhidos (exploracao_agricola_id IN NUMBER, data_inicio IN DATE, data_fim IN DATE) RETURN SYS_REFCURSOR AS
    lista SYS_REFCURSOR;
BEGIN
    OPEN lista FOR
        SELECT p.nome_comum, p.variedade, SUM(o.quantidade)
        FROM Operacoes o, Plantas p
        WHERE o.exploracao_agricola_id=exploracao_agricola_id
        AND o.operacao='Colheita'
        AND o.data BETWEEN data_inicio AND data_fim
        AND o.planta_id=p.id
        GROUP BY p.nome_comum, p.variedade;
    RETURN lista;
END;
/*test cursor*/
DECLARE
    lista SYS_REFCURSOR;
    nome_comum VARCHAR2(20);
    variedade VARCHAR2(20);
    quantidade NUMBER;
BEGIN
    lista := lista_produtos_colhidos(106, TO_DATE('2021-09-01', 'YYYY-MM-DD'), TO_DATE('2021-09-30', 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Nome Comum | Variedade | Quantidade');
    DBMS_OUTPUT.PUT_LINE('---------------------------------');
    LOOP
        FETCH lista INTO nome_comum, variedade, quantidade;
        EXIT WHEN lista%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(nome_comum || ' | ' || variedade || ' | ' || quantidade);
    END LOOP;
    CLOSE lista;
END;


US18:Como Gestor Agricola, pretendo obter a lista de operacoes realizadas numa dada parcela, para cada tipo de operacao, num dado intervalo de tempo.
/*cursor*/
CREATE OR REPLACE FUNCTION lista_operacoes (exploracao_agricola_id IN NUMBER, data_inicio IN DATE, data_fim IN DATE) RETURN SYS_REFCURSOR AS
    lista SYS_REFCURSOR;
BEGIN
    OPEN lista FOR
        SELECT o.operacao, COUNT(o.operacao)
        FROM Operacoes o
        WHERE o.exploracao_agricola_id=exploracao_agricola_id
        AND o.data BETWEEN data_inicio AND data_fim
        GROUP BY o.operacao;
    RETURN lista;
END;
/*test cursor*/
DECLARE
    lista SYS_REFCURSOR;
    operacao VARCHAR2(20);
    quantidade NUMBER;
BEGIN
    lista := lista_operacoes(106, TO_DATE('2021-09-01', 'YYYY-MM-DD'), TO_DATE('2021-09-30', 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Operacao | Quantidade');
    DBMS_OUTPUT.PUT_LINE('---------------------');
    LOOP
        FETCH lista INTO operacao, quantidade;
        EXIT WHEN lista%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(operacao || ' | ' || quantidade);
    END LOOP;
    CLOSE lista;
END;


US20:Como Gestor Agricola, pretendo obter os totais de rega mensal de cada parcela, num dado intervalo de tempo.
/*cursor*/
CREATE OR REPLACE FUNCTION lista_rega_mensal (exploracao_agricola_id IN NUMBER, data_inicio IN DATE, data_fim IN DATE) RETURN SYS_REFCURSOR AS
    lista SYS_REFCURSOR;
BEGIN
    OPEN lista FOR
        SELECT TO_CHAR(o.data, 'MM-YYYY'), SUM(o.quantidade)
        FROM Operacoes o
        WHERE o.exploracao_agricola_id=exploracao_agricola_id
        AND o.operacao='Rega'
        AND o.data BETWEEN data_inicio AND data_fim
        GROUP BY TO_CHAR(o.data, 'MM-YYYY');
    RETURN lista;
END;
/*test cursor*/
DECLARE
    lista SYS_REFCURSOR;
    mes VARCHAR2(20);
    quantidade NUMBER;
BEGIN
    lista := lista_rega_mensal(106, TO_DATE('2021-09-01', 'YYYY-MM-DD'), TO_DATE('2021-09-30', 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('Mes | Quantidade');
    DBMS_OUTPUT.PUT_LINE('--------------');
    LOOP
        FETCH lista INTO mes, quantidade;
        EXIT WHEN lista%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(mes || ' | ' || quantidade);
    END LOOP;
    CLOSE lista;
END;