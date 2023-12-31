CREATE OR REPLACE PACKAGE PKG_REGA AS
 -- PROCEDURE PARA REGISTAR REGA
    PROCEDURE REGISTAR_REGA(
        P_DATA IN DATE,
        P_NUM_SETOR IN INTEGER,
        P_DURACAO IN INTEGER
    );
 -- PROCEDURE PARA REGISTAR FERTIRREGA
    PROCEDURE REGISTAR_REGA(
        P_DATA IN DATE,
        P_NUM_SETOR IN INTEGER,
        P_DURACAO IN INTEGER,
        P_NUM_RECEITA IN INTEGER
    );
END PKG_REGA;
/

CREATE OR REPLACE PACKAGE BODY PKG_REGA AS
 --------------------------------------------------------------------------------
 -- PROCEDURE PARA REGISTAR REGA
 --------------------------------------------------------------------------------
    PROCEDURE REGISTAR_REGA(
        P_DATA IN DATE,
        P_NUM_SETOR IN INTEGER,
        P_DURACAO IN INTEGER
    ) AS
        V_ID_OPERACAO INTEGER;
        V_ID_SETOR    INTEGER;
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            P_DATA
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = P_NUM_SETOR;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            P_DURACAO,
            V_ID_SETOR
        );
        DBMS_OUTPUT .PUT_LINE('Rega registada com sucesso com o ID '
                              || V_ID_OPERACAO);
        DBMS_OUTPUT.PUT_LINE('Número de setor: '
                             || P_NUM_SETOR);
        DBMS_OUTPUT.PUT_LINE('Duração: '
                             || P_DURACAO);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            RAISE_APPLICATION_ERROR(-20000, 'Rega já existente');
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Setor não existe');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            RAISE_APPLICATION_ERROR(-20002, 'Erro desconhecido');
    END REGISTAR_REGA;
 --------------------------------------------------------------------------------
 -- PROCEDURE PARA REGISTAR FERTIRREGA
 --------------------------------------------------------------------------------
    PROCEDURE REGISTAR_REGA(
        P_DATA IN DATE,
        P_NUM_SETOR IN INTEGER,
        P_DURACAO IN INTEGER,
        P_NUM_RECEITA IN INTEGER
    ) AS
        V_ID_OPERACAO INTEGER;
        V_ID_SETOR    INTEGER;
        V_ID_RECEITA  INTEGER;
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            P_DATA
        ) RETURNING ID INTO V_ID_OPERACAO;
        BEGIN
            SELECT
                ID INTO V_ID_SETOR
            FROM
                SETOR
            WHERE
                NUM_SETOR = P_NUM_SETOR;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20001, 'Setor não existe');
        END;

        BEGIN
            SELECT
                ID INTO V_ID_RECEITA
            FROM
                RECEITA_FERTIRREGA
            WHERE
                NUM_RECEITA = P_NUM_RECEITA;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20003, 'Receita não existe');
        END;

        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            P_DURACAO,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_RECEITA
        );
        DBMS_OUTPUT.PUT_LINE('Fertirrega registada com sucesso com o ID '
                             || V_ID_OPERACAO);
        DBMS_OUTPUT.PUT_LINE('Número de setor: '
                             || P_NUM_SETOR);
        DBMS_OUTPUT.PUT_LINE('Duração: '
                             || P_DURACAO);
        DBMS_OUTPUT.PUT_LINE('Número de receita: '
                             || P_NUM_RECEITA);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            RAISE_APPLICATION_ERROR(-20000, 'Rega já existente');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            RAISE_APPLICATION_ERROR(-20002, 'Erro desconhecido');
    END REGISTAR_REGA;
END PKG_REGA;
/