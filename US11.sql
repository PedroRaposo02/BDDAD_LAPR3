CREATE OR REPLACE PROCEDURE REGISTAR_SEMEADURA (
    PARCELA IN VARCHAR2,
    PLANTA_NOME IN VARCHAR2,
    PLANTA_VARIEDADE IN VARCHAR2,
    DATA IN DATE,
    QUANTIDADE IN FLOAT,
    UNIDADES IN VARCHAR2,
    FATOR_PRODUCAO IN VARCHAR2
) IS
    PLANTA_ID         NUMBER;
    PARCELA_ID        NUMBER;
    FATOR_PRODUCAO_ID NUMBER;
    CULTURA_ID        NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Registar sementeira');
    DBMS_OUTPUT.PUT_LINE('Parcela: '
                         || PARCELA);
    DBMS_OUTPUT.PUT_LINE('Planta: '
                         || PLANTA_NOME
                         || ' '
                         || PLANTA_VARIEDADE);
    DBMS_OUTPUT.PUT_LINE('Data: '
                         || DATA);
    DBMS_OUTPUT.PUT_LINE('Quantidade: '
                         || QUANTIDADE
                         || ' '
                         || UNIDADES);
    DBMS_OUTPUT.PUT_LINE('Fator de producao: '
                         || FATOR_PRODUCAO);
 /* grab parcela ID from parcela */
    BEGIN
        BEGIN
            SELECT
                ID INTO FATOR_PRODUCAO_ID
            FROM
                FATOR_PRODUCAO
            WHERE
                DESIGNACAO=FATOR_PRODUCAO;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                FATOR_PRODUCAO_ID := NULL;
        END;

        SELECT
            ID INTO PARCELA_ID
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO=PARCELA;

        /* Grab planta */
        SELECT
            ID INTO PLANTA_ID
        FROM
            PLANTA
        WHERE
            NOME_COMUM=PLANTA_NOME
            AND VARIEDADE=PLANTA_VARIEDADE;

        /* grab cultura ID from parcela, planta and data */
        SELECT
            C.ID INTO CULTURA_ID
        FROM
            CULTURA C
            LEFT JOIN PLANTA P
            ON C.PLANTA_ID = P.ID
        WHERE
            C.PARCELA_ID = PARCELA_ID
            AND P.ID = PLANTA_ID
            AND P.TIPO_PLANTACAO='Temporaria'
            AND DATA BETWEEN C.DATA_INICIAL AND C.DATA_FINAL;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Planta nao encontrada');
        When TOO_MANY_ROWS THEN
            dbms_output.put_line('Mais do que uma cultura encontrada');
    END;

    /** Insert */
    INSERT INTO OPERACAO (
        TIPO_OPERACAO,
        MODO,
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO_ID,
        CULTURA_ID
    ) VALUES (
        'Sementeira',
        '',
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO_ID,
        CULTURA_ID
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Operacao registada com sucesso');
/* EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('
        Erro ao registar sementeira'); */

END REGISTAR_SEMEADURA;
/

DECLARE
    PARCELA          VARCHAR2(50) := 'Horta Nova';
    PLANTA_NOME      VARCHAR2(20) := 'Cenoura';
    PLANTA_VARIEDADE VARCHAR2(20) := 'Scarlet Nantes';
    DATA             DATE := TO_DATE('2020-05-10', 'YYYY-MM-DD');
    QUANTIDADE       FLOAT := 950.0;
    UNIDADES         VARCHAR2(20) := 'kg';
    FATOR_PRODUCAO   VARCHAR2(50) := '';
BEGIN
    REGISTAR_SEMEADURA(PARCELA, PLANTA_NOME, PLANTA_VARIEDADE, DATA, QUANTIDADE, UNIDADES, 'FATOR_PRODUCAO');
END;
/