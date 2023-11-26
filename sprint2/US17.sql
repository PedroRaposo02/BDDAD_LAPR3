CREATE OR REPLACE FUNCTION LISTA_FATORES (
    V_PARCELA IN VARCHAR2,
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN
    OPEN LISTA FOR
        SELECT
            FP.DESIGNACAO                                AS DESIGNACAO,
            FP.TIPO                                      AS TIPO,
            COMP.COMPONENTE                              AS COMPONENTE,
            COMP.PERCENTAGEM                             AS PERCENTAGEM,
            NVL(SUM(O.QUANTIDADE), 0) * COMP.PERCENTAGEM AS QUANTIDADE_KG
        FROM
            FATOR_PRODUCAO   FP
            LEFT JOIN OPERACAO O
            ON FP.ID = O.FATOR_PRODUCAO_ID
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
            LEFT JOIN COMPONENTE COMP
            ON FP.ID = COMP.FATOR_PRODUCAO_ID
        WHERE
            PA.DESIGNACAO = V_PARCELA
            AND O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
        GROUP BY
            FP.DESIGNACAO,
            FP.TIPO,
            COMP.COMPONENTE,
            COMP.PERCENTAGEM
        ORDER BY
            FP.DESIGNACAO,
            COMP.PERCENTAGEM DESC;
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA         SYS_REFCURSOR;
    DESIGNACAO    VARCHAR2(20);
    TIPO          VARCHAR2(20);
    COMPONENTE    VARCHAR2(20);
    PERCENTAGEM   FLOAT;
    QUANTIDADE_KG FLOAT;
    V_PARCELA     VARCHAR2(20) := 'Campo Grande';
    DATA_INICIAL  DATE := TO_DATE('2015-09-01', 'YYYY-MM-DD');
    DATA_FINAL    DATE := TO_DATE('2023-09-30', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_FATORES (V_PARCELA, DATA_INICIAL, DATA_FINAL);
    dbms_output.put_line ('DESIGNACAO | TIPO | COMPONENTE | PERCENTAGEM | QUANTIDADE_KG');
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------');
    LOOP
        FETCH LISTA INTO DESIGNACAO, TIPO, COMPONENTE, PERCENTAGEM, QUANTIDADE_KG;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE (DESIGNACAO
                              || ' | '
                              || TIPO
                              || ' | '
                              || COMPONENTE
                              || ' | '
                              || PERCENTAGEM
                              || ' | '
                              || QUANTIDADE_KG || ' kg');
    END LOOP;

    CLOSE LISTA;
END;
/