CREATE OR REPLACE PROCEDURE REGISTAR_SEMEADURA (
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
        DBMS_OUTPUT.PUT_LINE(V_CULTURA_ID);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Planta nao encontrada');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('Mais do que uma cultura encontrada');
    END;
 /* Impede creation if unidades are in HA and the provided quantity of HA is greater than selected culture available HA*/

    IF UNIDADES = 'ha' THEN
        BEGIN
            SELECT
                QUANTIDADE INTO V_QUANTIDADE
            FROM
                CULTURA
            WHERE
                ID = V_CULTURA_ID;
            IF QUANTIDADE > V_QUANTIDADE THEN
                RAISE_APPLICATION_ERROR(-20001, 'Quantidade de ha maior do que a disponivel');
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20001, 'Cultura nao encontrada');
        END;
    END IF;
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
        V_FATOR_PRODUCAO_ID,
        V_CULTURA_ID
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Operacao registada com sucesso');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('
        Erro ao registar sementeira');
END REGISTAR_SEMEADURA;
/

/* DECLARE
    PARCELA          VARCHAR2(50) := 'Horta Nova';
    PLANTA_NOME      VARCHAR2(20) := 'Cenoura';
    PLANTA_VARIEDADE VARCHAR2(20) := 'Scarlet Nantes';
    DATA             DATE := TO_DATE('2020-05-10', 'YYYY-MM-DD');
    QUANTIDADE       FLOAT := 950.0;
    UNIDADES         VARCHAR2(20) := 'kg';
    FATOR_PRODUCAO   VARCHAR2(50) := '';
BEGIN
    REGISTAR_SEMEADURA(PARCELA, PLANTA_NOME, PLANTA_VARIEDADE, DATA, QUANTIDADE, UNIDADES, FATOR_PRODUCAO);
END;
/ */

INSERT INTO CULTURA (
    DATA_INICIAL,
    DATA_FINAL,
    QUANTIDADE,
    UNIDADES,
    PARCELA_ID,
    PLANTA_ID
) VALUES (
    TO_DATE('2021-05-10', 'YYYY-MM-DD'),
    TO_DATE('2023-12-20', 'YYYY-MM-DD'),
    10,
    'ha',
    (SELECT ID FROM PARCELA_AGRICOLA WHERE DESIGNACAO = 'Horta Nova'),
    (SELECT ID FROM PLANTA WHERE NOME_COMUM = 'Nabo Greleiro' AND VARIEDADE = 'Senhora Conceicao')
);

SELECT
    *
FROM
    CULTURA C
    LEFT JOIN PLANTA P
    ON C.PLANTA_ID = P.ID
WHERE
    P.NOME_COMUM LIKE 'Nabo%';

DECLARE
    PARCELA          VARCHAR2(50) := 'Campo Novo';
    PLANTA_NOME      VARCHAR2(20) := 'Nabo Greleiro';
    PLANTA_VARIEDADE VARCHAR2(20) := 'Senhora Conceicao';
    DATA             DATE := TO_DATE('2023-09-19', 'YYYY-MM-DD');
    QUANTIDADE       FLOAT := 0.9;
    UNIDADES         VARCHAR2(20) := 'kg';
    FATOR_PRODUCAO   VARCHAR2(50) := '';
BEGIN
    REGISTAR_SEMEADURA(PARCELA, PLANTA_NOME, PLANTA_VARIEDADE, DATA, QUANTIDADE, UNIDADES, FATOR_PRODUCAO);
END;
/