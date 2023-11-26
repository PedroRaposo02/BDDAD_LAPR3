US14:Como Gestor Agricola, quero registar uma operacao de aplicacao de fator de producao

CREATE OR REPLACE PROCEDURE REGISTAR_APLICACAO_FATOR_PRODUCAO (
    PARCELA IN VARCHAR2,
    PLANTA_NOME IN VARCHAR2,
    PLANTA_VARIEDADE IN VARCHAR2,
    DATA IN DATE,
    QUANTIDADE IN FLOAT,
    UNIDADES IN VARCHAR2,
    FATOR_PRODUCAO IN VARCHAR2
) IS
    V_PLANTA_ID         NUMBER;
    V_PARCELA_ID        NUMBER;
    V_FATOR_PRODUCAO_ID NUMBER;
    V_CULTURA_ID        NUMBER;
    V_QUANTIDADE        FLOAT;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Registar aplicacao de fator de producao');
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
 /* BEGIN */
 /* Impede creation of Operacao in the future */
    IF DATA > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Data da operacao nao pode ser no futuro');
    END IF;

    BEGIN
        SELECT
            ID INTO V_FATOR_PRODUCAO_ID
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO=FATOR_PRODUCAO;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            V_FATOR_PRODUCAO_ID := NULL;
    END;

    BEGIN
        SELECT
            ID INTO V_PARCELA_ID
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO=PARCELA;
 /* Grab planta */
        SELECT
            ID INTO V_PLANTA_ID
        FROM
            PLANTA
        WHERE
            NOME_COMUM=PLANTA_NOME
            AND VARIEDADE=PLANTA_VARIEDADE;
 /* grab cultura ID from parcela, planta and data */
        SELECT
            C.ID INTO V_CULTURA_ID
        FROM
            CULTURA C
            JOIN PLANTA P
            ON C.PLANTA_ID = P.ID
            AND P.ID = V_PLANTA_ID
        WHERE
            C.PARCELA_ID = V_PARCELA_ID
            AND C.PLANTA_ID = V_PLANTA_ID
            AND P.TIPO_PLANTACAO='Temporaria'
            AND DATA BETWEEN C.DATA_INICIAL AND C.DATA_FINAL;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Planta nao encontrada');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('Mais do que uma cultura encontrada');
    END;
    /*Impede creation if unidades are HA and the provides quantity of HA is greater than selected culture available HA*/

    IF UNIDADES = 'ha' THEN
        BEGIN
            SELECT
                QUANTIDADE INTO V_QUANTIDADE
            FROM
                CULTURA
            WHERE
                ID = V_CULTURA_ID;
            IF QUANTIDADE > V_QUANTIDADE THEN
                RAISE_APPLICATION_ERROR(-20001, 'Quantidade de ha disponivel insuficiente');
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20001, 'Cultura nao encontrada');
        END;
    END IF;
    /* Insert */

    INSERT INTO OPERACAO (
        TIPO_OPERACAO,
        MODO,
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO_ID,
        CULTURA_ID
    ) VALUES (
        'Aplicacao Fator Producao',
        '',
        DATA,
        QUANTIDADE,
        UNIDADES,
        V_FATOR_PRODUCAO_ID,
        V_CULTURA_ID
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Operacao registada com sucesso');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('
        Erro ao registar sementeira');
END REGISTAR_APLICACAO_FATOR_PRODUCAO;
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
    REGISTAR_APLICACAO_FATOR_PRODUCAO(
        PARCELA,
        PLANTA_NOME,
        PLANTA_VARIEDADE,
        DATA,
        QUANTIDADE,
        UNIDADES,
        FATOR_PRODUCAO
    );
END;
/