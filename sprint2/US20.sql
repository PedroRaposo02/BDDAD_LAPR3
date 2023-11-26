CREATE OR REPLACE FUNCTION LISTA_TOTAL_REGA_MENSAL (
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN
    OPEN LISTA FOR
        SELECT
            PA.DESIGNACAO              AS PARCELA,
            TO_CHAR(O.DATA, 'YYYY-MM') AS MES,
            SUM(O.QUANTIDADE) * 60 AS TOTAL_REGA
        FROM
            OPERACAO         O
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
        WHERE
            O.TIPO_OPERACAO = 'Rega'
            AND O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
        GROUP BY
            PA.DESIGNACAO,
            TO_CHAR(O.DATA, 'YYYY-MM')
        ORDER BY
            PA.DESIGNACAO,
            TO_CHAR(O.DATA, 'YYYY-MM');
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA        SYS_REFCURSOR;
    PARCELA      VARCHAR2(20);
    MES          VARCHAR2(20);
    TOTAL_REGA   FLOAT;
    DATA_INICIAL DATE := TO_DATE('2010-06-01', 'YYYY-MM-DD');
    DATA_FINAL   DATE := TO_DATE('2023-11-06', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_TOTAL_REGA_MENSAL (DATA_INICIAL, DATA_FINAL);
    DBMS_OUTPUT.PUT_LINE ('PARCELA - MES - TOTAL_REGA');
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------');
    LOOP
        FETCH LISTA INTO PARCELA, MES, TOTAL_REGA;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (PARCELA
                              || ' - '
                              ||MES
                              || ' - '
                              || TOTAL_REGA
                              || ' min');
    END LOOP;

    CLOSE LISTA;
END;
/