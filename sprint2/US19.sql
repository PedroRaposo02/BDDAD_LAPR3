CREATE OR REPLACE FUNCTION LISTA_FATORES (
    V_DATA_INICIAL IN DATE,
    V_DATA_FINAL IN DATE
) RETURN SYS_REFCURSOR AS
    LISTA SYS_REFCURSOR;
BEGIN
    OPEN LISTA FOR
        SELECT
            FP.TIPO                                        AS TIPO_FATOR,
            FP.APLICACAO                                   AS APLICACAO,
            CONCAT(P.NOME_COMUM, CONCAT(' ', P.VARIEDADE)) AS CULTURA,
            PA.DESIGNACAO                                  AS PARCELA
        FROM
            FATOR_PRODUCAO   FP
            LEFT JOIN OPERACAO O
            ON FP.ID = O.FATOR_PRODUCAO_ID
            LEFT JOIN CULTURA C
            ON O.CULTURA_ID = C.ID
            LEFT JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID = PA.ID
            LEFT JOIN PLANTA P
            ON C.PLANTA_ID = P.ID
        WHERE
            O.DATA BETWEEN V_DATA_INICIAL AND V_DATA_FINAL
        GROUP BY
            FP.APLICACAO,
            FP.TIPO,
            P.NOME_COMUM,
            P.VARIEDADE,
            PA.DESIGNACAO
        ORDER BY
            FP.TIPO;
    RETURN LISTA;
END;
/

/*test cursor*/
DECLARE
    LISTA        SYS_REFCURSOR;
    TIPO_FATOR   VARCHAR2(20);
    APLICACAO    VARCHAR2(20);
    CULTURA      VARCHAR2(50);
    PARCELA      VARCHAR2(50);
    DATA_INICIAL DATE := TO_DATE('2015-09-01', 'YYYY-MM-DD');
    DATA_FINAL   DATE := TO_DATE('2023-09-30', 'YYYY-MM-DD');
BEGIN
    LISTA := LISTA_FATORES (DATA_INICIAL, DATA_FINAL);
    DBMS_OUTPUT.PUT_LINE ('TIPO_FATOR | APLICACAO | CULTURA | PARCELA' );
    DBMS_OUTPUT.PUT_LINE ('----------------------------------------------------------------------' );
    LOOP
        FETCH LISTA INTO TIPO_FATOR, APLICACAO, CULTURA, PARCELA;
        EXIT WHEN LISTA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE ( TIPO_FATOR
                               || ' | '
                               || APLICACAO
                               || ' | '
                               || CULTURA
                               || ' | '
                               || PARCELA );
    END LOOP;

    CLOSE LISTA;
END;
/