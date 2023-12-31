/* Insert de operacoes */

--Operaçao de Colheita
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

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
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

        dbms_output.put_line('Colheita inserida com sucesso com o id: ' || V_ID_OPERACAO);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
END;
/

--Operaçoes de Semeadura
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

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
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
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
END;
/