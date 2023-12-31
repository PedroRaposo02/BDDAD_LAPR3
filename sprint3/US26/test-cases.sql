/* Insert de operacoes */

--------------------------------------------------------------------------------
-- OPERACAO DE COLHEITA
--------------------------------------------------------------------------------
DECLARE
    V_ID_PRODUTO    INTEGER;
    V_ID_OPERACAO   INTEGER;
    V_ID_PLANTA     INTEGER;
    V_ID_CULTURA    INTEGER;
    V_ID_PARCELA    INTEGER;
    V_OPERACAO_DATA DATE;
BEGIN
 --FIRST OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-18', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Royal Gala';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Royal Gala';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Royal Gala',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        V_ID_CULTURA := FETCH_CULTURA_ID(V_ID_PLANTA, V_ID_PARCELA, V_OPERACAO_DATA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
        DBMS_OUTPUT.PUT_LINE('Colheita inserida com sucesso com o id: '
                             || V_ID_OPERACAO);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
END;
/

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Colheita';

--------------------------------------------------------------------------------
-- OPERACAO DE SEMEADURA
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO    INTEGER;
    V_ID_CULTURA     INTEGER;
    V_ID_PARCELA     INTEGER;
    V_ID_PLANTA      INTEGER;
    V_ID_TIPO_PLANTA INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-04-05', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Cenoura';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Sugarsnax Hybrid'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        V_ID_CULTURA := FETCH_CULTURA_ID(V_ID_PLANTA, V_ID_PARCELA, TO_DATE('2023-04-05', 'YYYY-MM-DD'));
        INSERT INTO SEMEADURA (
            OPERACAO_ID,
            QUANTIDADE_SEMENTE,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            1.2,
            V_ID_CULTURA
        );
        DBMS_OUTPUT.PUT_LINE('Semeadura inserida com sucesso com o id: '
                             || V_ID_OPERACAO );
    END;

    COMMIT;
END;

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Semeadura';
 --------------------------------------------------------------------------------
 -- OPERACAO DE PLANTACAO
 --------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2016-10-12', 'YYYY-MM-DD')
        )RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            40,
            V_ID_CULTURA
        );
    END;

    DBMS_OUTPUT.PUT_LINE('Plantacao inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    COMMIT;
END;
/

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Plantacao';

--------------------------------------------------------------------------------
-- OPERACAO DE MONDA
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-08', 'YYYY-MM-DD')
        )RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Cenoura';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Sugarsnax Hybrid'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
        V_ID_CULTURA := FETCH_CULTURA_ID(V_ID_PLANTA, V_ID_PARCELA_AGRICOLA, TO_DATE('2023-05-08', 'YYYY-MM-DD'));
        INSERT INTO MONDA (
            OPERACAO_ID,
            AREA,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            0.5,
            V_ID_CULTURA
        );
    END;

    DBMS_OUTPUT.PUT_LINE('Monda inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    COMMIT;
END;

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Monda';
 --------------------------------------------------------------------------------
 -- OPERACAO DE MOVIMENTACAO DO SOLO
 --------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_PARCELA  INTEGER;
BEGIN
    INSERT INTO OPERACAO (
        DATA
    ) VALUES (
        TO_DATE('2023-07-04', 'YYYY-MM-DD')
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
        ID INTO V_ID_PARCELA
    FROM
        PARCELA_AGRICOLA
    WHERE
        DESIGNACAO = 'Campo Novo';
    INSERT INTO MOVIMENTACAO_SOLO (
        OPERACAO_ID,
        AREA,
        PARCELA_ID
    ) VALUES (
        V_ID_OPERACAO,
        0.5,
        V_ID_PARCELA
    );
    DBMS_OUTPUT.PUT_LINE('Movimentacao do solo inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    INSERT INTO OPERACAO (
        DATA
    ) VALUES (
        TO_DATE('2023-10-10', 'YYYY-MM-DD')
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
        ID INTO V_ID_PARCELA
    FROM
        PARCELA_AGRICOLA
    WHERE
        DESIGNACAO = 'Campo Novo';
    INSERT INTO MOVIMENTACAO_SOLO (
        OPERACAO_ID,
        AREA,
        PARCELA_ID
    ) VALUES (
        V_ID_OPERACAO,
        1.1,
        V_ID_PARCELA
    );
    DBMS_OUTPUT.PUT_LINE('Movimentacao do solo inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    COMMIT;
END;
/

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Movimentacao do Solo';

--------------------------------------------------------------------------------
-- OPERACAO DE REGA
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-02 07:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Rega inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
END;

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Rega';
 --------------------------------------------------------------------------------
 -- OPERACAO DE FERTIRREGA
 --------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-20 07:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            11
        );
    END;

    DBMS_OUTPUT.PUT_LINE('Fertirrega inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    COMMIT;
END;

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Fertirrega';
 --------------------------------------------------------------------------------
 -- OPERACAO DE APLICACAO DE FP NO SOLO
 --------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_FATOR_PRODUCAO   INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-04', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID,
            AREA
        ) VALUES (
            V_ID_OPERACAO,
            1.1
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            3200
        );
        INSERT INTO APLICACAO_FP_SOLO (
            OPERACAO_ID,
            PARCELA_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_PARCELA_AGRICOLA
        );
    END;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Aplicacao de FP no solo inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
END;
/

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Aplicacao no Solo';

--------------------------------------------------------------------------------
-- OPERACAO DE APLICACAO DE FP NA CULTURA
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_FATOR_PRODUCAO   INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_MODO_AFP         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-06', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID,
            AREA
        ) VALUES (
            V_ID_OPERACAO,
            1.1
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        V_ID_CULTURA := FETCH_CULTURA_ID(V_ID_PLANTA, V_ID_PARCELA_AGRICOLA, TO_DATE('2020-01-06', 'YYYY-MM-DD'));
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            100
        );
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
    END;

    DBMS_OUTPUT.PUT_LINE('Aplicacao de FP na cultura inserida com sucesso com o id: '
                         || V_ID_OPERACAO );
    COMMIT;
END;

SELECT
    *
FROM
    OPERATIONS_LOG
WHERE
    OPERATION_TYPE = 'Aplicacao na Cultura';