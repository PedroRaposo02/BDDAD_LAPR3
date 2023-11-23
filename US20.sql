US20:Como Gestor Agricola, pretendo obter os totais de rega mensal de cada parcela, num dado intervalo de tempo.

CREATE OR REPLACE FUNCTION LISTA_TOTAL_REGA_MENSAL (
    V_PARCELA IN VARCHAR2,
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN
    OPEN LISTA FOR
        SELECT
            TO_CHAR(O.DATA, 'YYYY-MM') AS MES,
            SUM(O.QUANTIDADE)          AS TOTAL_REGA
        FROM
            OPERACAO O
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
        WHERE
            PA.DESIGNACAO = V_PARCELA
            AND O.TIPO_OPERACAO = 'Rega'
            AND O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
        GROUP BY
            TO_CHAR(O.DATA, 'YYYY-MM')
        ORDER BY
            TO_CHAR(O.DATA, 'YYYY-MM');
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA         SYS_REFCURSOR;
    MES           VARCHAR2(20);
    TOTAL_REGA    FLOAT;
    V_PARCELA     VARCHAR2(20) := 'Campo Grande';
    DATA_INICIAL  DATE := TO_DATE('2015-09-01', 'YYYY-MM-DD');
    DATA_FINAL    DATE := TO_DATE('2023-09-30', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_TOTAL_REGA_MENSAL (V_PARCELA, DATA_INICIAL, DATA_FINAL);
    dbms_output.put_line ('MES | TOTAL_REGA');
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------');
    LOOP
        FETCH LISTA INTO MES, TOTAL_REGA;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (MES
                              || ' | '
                              || TOTAL_REGA);
    END LOOP;

    CLOSE LISTA;
END;
/