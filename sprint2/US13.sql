CREATE OR REPLACE PROCEDURE REGISTAR_COLHEITA (
    PARCELA IN VARCHAR2,
    PLANTA_NOME IN VARCHAR2,
    PLANTA_VARIEDADE IN VARCHAR2,
    DATA IN DATE,
    QUANTIDADE IN FLOAT
) IS
    V_PLANTA_ID   NUMBER;
    V_PARCELA_ID  NUMBER;
    V_CULTURA_ID  NUMBER;
    V_OPERACAO_ID NUMBER;
    V_DATA        DATE := DATA;
BEGIN
    DBMS_OUTPUT.PUT_LINE ('Registar Colheita');
    DBMS_OUTPUT.PUT_LINE ('Parcela: '
                          || PARCELA);
    DBMS_OUTPUT.PUT_LINE ( 'Planta: '
                           || PLANTA_NOME
                           || ' '
                           || PLANTA_VARIEDADE );
    DBMS_OUTPUT.PUT_LINE ('Data: '
                          || DATA);
    DBMS_OUTPUT.PUT_LINE ('Quantidade: '
                          || QUANTIDADE
                          || ' kg');
 /* grab parcela ID from parcela */
 /* BEGIN */
 /* Impede creation of Operacao in the future */
    IF DATA > SYSDATE THEN
        RAISE_APPLICATION_ERROR (-20001, 'Data da operacao nao pode ser no futuro');
    END IF;

    BEGIN
        SELECT
            ID INTO V_PARCELA_ID
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = PARCELA;
 /* Grab planta */
        SELECT
            ID INTO V_PLANTA_ID
        FROM
            PLANTA
        WHERE
            NOME_COMUM = PLANTA_NOME
            AND VARIEDADE = PLANTA_VARIEDADE;
 /* grab cultura ID from parcela, planta and data */
        SELECT
            C.ID INTO V_CULTURA_ID
        FROM
            CULTURA C
            JOIN PLANTA P
            ON C.PLANTA_ID = P.ID
            AND P.ID = V_PLANTA_ID
        WHERE
            C.PARCELA_ID = PARCELA_ID
            AND C.PLANTA_ID = V_PLANTA_ID
            AND ( ( P.TIPO_PLANTACAO = 'Temporaria'
            AND DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL )
            OR ( P.TIPO_PLANTACAO = 'Permanente'
            AND DATA >= C.DATA_INICIAL ) );
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR (-20001, 'Dados nao encontrados');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE ('Select devolveu mais do que uma linha');
    END;
 /** Insert */
 /* handle operacao already exists (it cant exist for me to create it)*/

    SELECT
        ID INTO V_OPERACAO_ID
    FROM
        OPERACAO
    WHERE
        TIPO_OPERACAO = 'Colheita'
        AND DATA = V_DATA
        AND CULTURA_ID = V_CULTURA_ID;

    IF V_OPERACAO_ID IS NOT NULL THEN
        RAISE_APPLICATION_ERROR (-20001, 'Operacao ja existe');
    END IF;

    INSERT INTO OPERACAO (
        TIPO_OPERACAO,
        MODO,
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO_ID,
        CULTURA_ID
    ) VALUES (
        'Colheita',
        '',
        DATA,
        QUANTIDADE,
        'kg',
        '',
        V_CULTURA_ID
    ) RETURNING ID INTO V_OPERACAO_ID;
    INSERT INTO PRODUTO (
        OPERACAO_ID,
        PLANTA_ID,
        NOME
    ) VALUES (
        V_OPERACAO_ID,
        V_PLANTA_ID,
        PLANTA_NOME
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE ('Operacao registada com sucesso');
    DBMS_OUTPUT.PUT_LINE('Operacao ID: '
                         || V_OPERACAO_ID);

EXCEPTION
    WHEN OTHERS THEN
 /* Print error */
        DBMS_OUTPUT.PUT_LINE(chr(13));
        DBMS_OUTPUT.PUT_LINE('Erro ao registar colheita');
        DBMS_OUTPUT.PUT_LINE ('Erro: '
                              || SQLERRM);
        DBMS_OUTPUT.PUT_LINE ('Codigo: '
                              || SQLCODE);
        ROLLBACK;
END REGISTAR_COLHEITA;
/

DECLARE
    PARCELA          VARCHAR2(50) := 'Horta Nova';
    PLANTA_NOME      VARCHAR2(20) := 'Cenoura';
    PLANTA_VARIEDADE VARCHAR2(20) := 'Scarlet Nantes';
    DATA             DATE := TO_DATE('2020-05-10', 'YYYY-MM-DD');
    QUANTIDADE       FLOAT := 950.0;
BEGIN
    REGISTAR_COLHEITA ( PARCELA, PLANTA_NOME, PLANTA_VARIEDADE, DATA, QUANTIDADE);
END;
/