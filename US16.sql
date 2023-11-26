CREATE OR REPLACE FUNCTION LISTA_PRODUTOS_COLHIDOS (
    V_PARCELA IN VARCHAR2,
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN   
    OPEN LISTA FOR
        SELECT
            P.NOME,
            P.PLANTA_ID,
            SUM(O.QUANTIDADE) AS QUANTIDADE
        FROM
            PRODUTO P
            LEFT JOIN OPERACAO O
            ON P.OPERACAO_ID = O.ID
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
        WHERE
            PA.DESIGNACAO = V_PARCELA
            AND O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
            AND O.TIPO_OPERACAO = 'Colheita'
        GROUP BY
            P.NOME,
            P.PLANTA_ID
        ORDER BY
            P.NOME;
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA         SYS_REFCURSOR;
    NOME          VARCHAR2(20);
    PLANTA_ID     NUMBER;
    QUANTIDADE_KG FLOAT;
    V_PARCELA     VARCHAR2(20) := 'Campo Grande';
    DATA_INICIAL  DATE := TO_DATE('2015-09-01', 'YYYY-MM-DD');
    DATA_FINAL    DATE := TO_DATE('2023-09-30', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_PRODUTOS_COLHIDOS (V_PARCELA, DATA_INICIAL, DATA_FINAL);
    dbms_output.put_line ('NOME | PLANTA_ID | QUANTIDADE_KG');
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------');
    LOOP
        FETCH LISTA INTO NOME, PLANTA_ID, QUANTIDADE_KG;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (NOME
                              || ' | '
                              || PLANTA_ID
                              || ' | '
                              || QUANTIDADE_KG || ' kg');
    END LOOP;
    CLOSE LISTA;
END;
/