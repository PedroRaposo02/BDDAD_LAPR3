CREATE OR REPLACE PROCEDURE REGISTAR_PODA (
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
    V_QUANTIDADE  FLOAT;
BEGIN
    DBMS_OUTPUT.PUT_LINE ('Registar Poda');
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
                          || ' un');
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
        DBMS_OUTPUT.PUT_LINE('Parcela ID: '
                             || V_PARCELA_ID);
 /* Grab planta */
        SELECT
            ID INTO V_PLANTA_ID
        FROM
            PLANTA
        WHERE
            NOME_COMUM = PLANTA_NOME
            AND VARIEDADE = PLANTA_VARIEDADE;
        DBMS_OUTPUT.PUT_LINE('Planta ID: '
                             || V_PLANTA_ID);
 /* grab cultura ID from parcela, planta and data */
 /** tipo de planta e sempre permanente (so se podam arvores)*/
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
            AND P.TIPO_PLANTACAO = 'Permanente'
            AND DATA >= C.DATA_INICIAL;
        DBMS_OUTPUT.PUT_LINE('Cultura ID: '
                             || V_CULTURA_ID);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR (-20001, 'Dados nao encontrados');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE ('Select devolveu mais do que uma linha');
    END;
 /** Check if number of quantity is greater than the available in culture */

    BEGIN
        SELECT
            QUANTIDADE INTO V_QUANTIDADE
        FROM
            CULTURA
        WHERE
            ID = V_CULTURA_ID;
        DBMS_OUTPUT.PUT_LINE('Max Quantidade: '
                             || V_QUANTIDADE);
        IF QUANTIDADE > V_QUANTIDADE THEN
            RAISE_APPLICATION_ERROR (-20001, 'Quantidade de plantas a podar maior do que a quantidade de plantas na cultura');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR (-20001, 'Quantidade nao encontrada');
    END;
 /** Insert */
 /* handle operacao already exists (it cant exist for me to create it)*/

    BEGIN
        SELECT
            ID INTO V_OPERACAO_ID
        FROM
            OPERACAO
        WHERE
            TIPO_OPERACAO = 'Poda'
            AND DATA = V_DATA
            AND CULTURA_ID = V_CULTURA_ID;
        DBMS_OUTPUT.PUT_LINE('Operacao ID: '
                             || V_OPERACAO_ID);
        IF V_OPERACAO_ID IS NOT NULL THEN
            RAISE_APPLICATION_ERROR (-20001, 'Operacao ja existe');
        END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                V_OPERACAO_ID := NULL;

    END;

    INSERT INTO OPERACAO (
        TIPO_OPERACAO,
        MODO,
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO_ID,
        CULTURA_ID
    ) VALUES (
        'Poda',
        '',
        DATA,
        QUANTIDADE,
        'un',
        '',
        V_CULTURA_ID
    ) RETURNING ID INTO V_OPERACAO_ID;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE ('Operacao registada com sucesso');
    DBMS_OUTPUT.PUT_LINE('Operacao ID: '
                         || V_OPERACAO_ID);
EXCEPTION
    WHEN OTHERS THEN
 /* Print error */
        DBMS_OUTPUT.PUT_LINE(CHR(13));
        DBMS_OUTPUT.PUT_LINE('Erro ao registar Poda');
        DBMS_OUTPUT.PUT_LINE ('Erro: '
                              || SQLERRM);
        DBMS_OUTPUT.PUT_LINE ('Codigo: '
                              || SQLCODE);
        ROLLBACK;
END REGISTAR_PODA;
/

DECLARE
    PARCELA          VARCHAR2(50) := 'Campo Grande';
    PLANTA_NOME      VARCHAR2(20) := 'Oliveira';
    PLANTA_VARIEDADE VARCHAR2(20) := 'Picual';
    DATA             DATE := TO_DATE('2020-10-15', 'YYYY-MM-DD');
    QUANTIDADE       FLOAT := 15.0;
BEGIN
    REGISTAR_PODA ( PARCELA, PLANTA_NOME, PLANTA_VARIEDADE, DATA, QUANTIDADE);
END;
/