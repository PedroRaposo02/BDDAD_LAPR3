CREATE OR REPLACE FUNCTION LISTA_OPERACOES (
    V_PARCELA IN VARCHAR2,
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN
    OPEN LISTA FOR
        SELECT
            O.TIPO_OPERACAO,
            O.DATA,
            O.MODO,
            O.QUANTIDADE,
            O.UNIDADES
        FROM
            OPERACAO O
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
        WHERE
            PA.DESIGNACAO = V_PARCELA
            AND O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
        ORDER BY
            O.TIPO_OPERACAO,
            O.DATA;
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA         SYS_REFCURSOR;
    TIPO_OPERACAO VARCHAR2(20);
    DATA          DATE;
    MODO          VARCHAR2(20);
    QUANTIDADE    FLOAT;
    UNIDADES      VARCHAR2(20);
    V_PARCELA     VARCHAR2(20) := 'Campo Grande';
    DATA_INICIAL  DATE := TO_DATE('2015-09-01', 'YYYY-MM-DD');
    DATA_FINAL    DATE := TO_DATE('2023-09-30', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_OPERACOES (V_PARCELA, DATA_INICIAL, DATA_FINAL);
    dbms_output.put_line ('TIPO_OPERACAO | DATA | MODO | QUANTIDADE | UNIDADES');
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------');
    LOOP
        FETCH LISTA INTO TIPO_OPERACAO, DATA, MODO, QUANTIDADE, UNIDADES;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (TIPO_OPERACAO
                              || ' | '
                              || DATA
                              || ' | '
                              || MODO
                              || ' | '
                              || QUANTIDADE
                              || ' | '
                              || UNIDADES);
    END LOOP;

    CLOSE LISTA;
END;
/
