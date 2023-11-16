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

US12:Como Gestor Agricola, quero registar uma operacao de monda
/*procedure*/
CREATE OR REPLACE PROCEDURE registar_operacao_monda (tipo_operacao VARCHAR2, modo VARCHAR2, data DATE, quantidade NUMBER, unidades VARCHAR2, fator_producao_id NUMBER, cultura_id NUMBER) AS
BEGIN
    INSERT INTO Operacao (tipo_operacao, modo, data, quantidade, unidades, fator_producao_id, cultura_id) VALUES (tipo_operacao, modo, data, quantidade, unidades, fator_producao_id, cultura_id);
END;
-- Test the procedure
DECLARE
  cultura_id NUMBER;
BEGIN
  BEGIN
    SELECT c.id INTO cultura_id 
    FROM Cultura c 
    JOIN Planta p ON c.planta_id=p.id 
    WHERE c.planta_id=(SELECT id FROM Planta WHERE nome_comum='Oliveira' AND variedade='Galega') 
    AND c.parcela_id=102 
    AND ((p.tipo_plantacao='Permanente' AND TIMESTAMP '2020-11-10 00:00:00' > c.data_inicial) 
    OR (p.tipo_plantacao='Temporaria' AND TIMESTAMP '2020-11-10 00:00:00' BETWEEN c.data_inicial AND c.data_final));
  END;
  
  registar_operacao_monda('Monda', '', TIMESTAMP '2020-11-10 00:00:00', '30.0', 'un', '', cultura_id);
END;

/* Select dos inserts testados */
SELECT * FROM Operacao WHERE tipo_operacao='Monda';




US14:Como Gestor Agricola, quero registar uma operacao de aplicacao de fator de producao
/*procedure*/
CREATE OR REPLACE PROCEDURE registar_operacao_aplicacao_fator_producao (tipo_operacao VARCHAR2, modo VARCHAR2, data DATE, quantidade NUMBER, unidades VARCHAR2, fator_producao_id NUMBER, cultura_id NUMBER) AS
BEGIN
    INSERT INTO Operacao (tipo_operacao, modo, data, quantidade, unidades, fator_producao_id, cultura_id) VALUES (tipo_operacao, modo, data, quantidade, unidades, fator_producao_id, cultura_id);
END;
/*----------------------------------------------------------------*/
/*testes*/
EXECUTE registar_operacao_aplicacao_fator_producao('Aplicacao Fator Producao', 'Foliar', TIMESTAMP '2022-12-11 00:00:00', '15.0', 'kg', (Select id from Fator_Producao where designacao='Patentkali'), (Select c.id from Cultura c join Planta p on c.planta_id=p.id where c.planta_id=(Select id from Planta where nome_comum='Oliveira' and variedade='Galega') and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-11 00:00:00' between c.data_inicial and c.data_final))));
EXECUTE registar_operacao_aplicacao_fator_producao('Aplicacao Fator Producao', 'Foliar', TIMESTAMP '2022-12-11 00:00:00', '10.0', 'kg', (Select id from Fator_Producao where designacao='Patentkali'), (Select c.id from Cultura c join Planta p on c.planta_id=p.id where c.planta_id=(Select id from Planta where nome_comum='Oliveira' and variedade='Picual') and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-11 00:00:00' between c.data_inicial and c.data_final))));
EXECUTE registar_operacao_aplicacao_fator_producao('Aplicacao Fator Producao', 'Foliar', TIMESTAMP '2022-12-11 00:00:00', '15.0', 'kg', (Select id from Fator_Producao where designacao='Patentkali'), (Select c.id from Cultura c join Planta p on c.planta_id=p.id where c.planta_id=(Select id from Planta where nome_comum='Macieira' and variedade='Royal Gala') and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-11 00:00:00' between c.data_inicial and c.data_final))));

/* Select dos inserts testados */
SELECT * FROM Operacao WHERE tipo_operacao='Aplicacao Fator Producao';


US16:Como Gestor Agricola, pretendo obter a lista dos produtos colhidos numa dada parcela, para cada especie, num dado intervalo de tempo
/*cursor*/
CREATE OR REPLACE FUNCTION obter_produtos_colhidos_parcela (parcela_id NUMBER, data_inicial DATE, data_final DATE) RETURN SYS_REFCURSOR AS
    produtos_colhidos SYS_REFCURSOR;
BEGIN
    OPEN produtos_colhidos FOR
        SELECT p.nome, p.planta_id, p.operacao_id
        FROM Produto p
        JOIN Operacao o ON p.operacao_id=o.id
        JOIN Cultura c ON o.cultura_id=c.id
        JOIN Planta pl ON c.planta_id=pl.id
        WHERE o.tipo_operacao='Colheita' AND c.parcela_id=parcela_id AND o.data BETWEEN data_inicial AND data_final;
    RETURN produtos_colhidos;
END;
/*----------------------------------------------------------------*/
/*testes*/
SELECT * FROM TABLE(obter_produtos_colhidos_parcela(102, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_produtos_colhidos_parcela(104, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));
SELECT * FROM TABLE(obter_produtos_colhidos_parcela(106, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_produtos_colhidos_parcela(107, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));


US18:Como Gestor Agricola, pretendo obter a lista de operacoes realizadas numa dada parcela, para cada tipo de operacao, num dado intervalo de tempo.
/*cursor*/
CREATE OR REPLACE FUNCTION obter_operacoes_parcela (parcela_id NUMBER, data_inicial DATE, data_final DATE) RETURN SYS_REFCURSOR AS
    operacoes_parcela SYS_REFCURSOR;
BEGIN
    OPEN operacoes_parcela FOR
        SELECT o.tipo_operacao, o.modo, o.data, o.quantidade, o.unidades, o.fator_producao_id, o.cultura_id
        FROM Operacao o
        JOIN Cultura c ON o.cultura_id=c.id
        WHERE c.parcela_id=parcela_id AND o.data BETWEEN data_inicial AND data_final;
    RETURN operacoes_parcela;
END;
/*----------------------------------------------------------------*/
/*testes*/
SELECT * FROM TABLE(obter_operacoes_parcela(102, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_operacoes_parcela(104, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));
SELECT * FROM TABLE(obter_operacoes_parcela(106, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_operacoes_parcela(107, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));




US20:Como Gestor Agricola, pretendo obter os totais de rega mensal de cada parcela, num dado intervalo de tempo.
/*cursor*/
CREATE OR REPLACE FUNCTION obter_totais_rega_mensal_parcela (parcela_id NUMBER, data_inicial DATE, data_final DATE) RETURN SYS_REFCURSOR AS
    totais_rega_mensal_parcela SYS_REFCURSOR;
BEGIN
    OPEN totais_rega_mensal_parcela FOR
        SELECT SUM(o.quantidade) AS total_rega, EXTRACT(MONTH FROM o.data) AS mes
        FROM Operacao o
        JOIN Cultura c ON o.cultura_id=c.id
        WHERE o.tipo_operacao='Rega' AND c.parcela_id=parcela_id AND o.data BETWEEN data_inicial AND data_final
        GROUP BY EXTRACT(MONTH FROM o.data)
        ORDER BY EXTRACT(MONTH FROM o.data);
    RETURN totais_rega_mensal_parcela;
END;
/*----------------------------------------------------------------*/
/*testes*/
SELECT * FROM TABLE(obter_totais_rega_mensal_parcela(102, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_totais_rega_mensal_parcela(104, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));
SELECT * FROM TABLE(obter_totais_rega_mensal_parcela(106, TIMESTAMP '2022-11-01 00:00:00', TIMESTAMP '2022-12-01 00:00:00'));
SELECT * FROM TABLE(obter_totais_rega_mensal_parcela(107, TIMESTAMP '2022-12-01 00:00:00', TIMESTAMP '2023-01-01 00:00:00'));


