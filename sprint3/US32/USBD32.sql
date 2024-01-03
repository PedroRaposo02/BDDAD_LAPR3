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
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
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
        V_ID_OPERACAO       INTEGER;
        V_ID_SETOR          INTEGER;
        V_ID_RECEITA        INTEGER;
        V_AREA_PARCELA      FLOAT(10);
        V_ID_MODO_APLICACAO INTEGER;
        V_CULTURAS          CULTURA%ROWTYPE;
        V_FATORES_RECEITA   FP_RECEITA%ROWTYPE;
        CURSOR C_CULTURAS IS
        SELECT
            *
        FROM
            CULTURA
        WHERE
            SETOR_ID = V_ID_SETOR;
        CURSOR C_FATORES_RECEITA IS
        SELECT
            *
        FROM
            FP_RECEITA
        WHERE
            RECEITA_ID = V_ID_RECEITA;
    BEGIN
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

        BEGIN
            SELECT
                ID INTO V_ID_MODO_APLICACAO
            FROM
                MODO_AFP
            WHERE
                DESIGNACAO = 'Solo';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO MODO_AFP (
                    DESIGNACAO
                ) VALUES (
                    'Solo'
                ) RETURNING ID INTO V_ID_MODO_APLICACAO;
        END;

        BEGIN
            FOR V_CULTURAS IN C_CULTURAS LOOP
                INSERT INTO OPERACAO (
                    DATA
                ) VALUES (
                    P_DATA
                ) RETURNING ID INTO V_ID_OPERACAO;
                INSERT INTO APLICACAO_FP (
                    OPERACAO_ID,
                    AREA
                ) VALUES (
                    V_ID_OPERACAO,
                    V_AREA_PARCELA
                );
                SELECT
                    AREA INTO V_AREA_PARCELA
                FROM
                    PARCELA_AGRICOLA
                WHERE
                    ID = V_CULTURAS.PARCELA_ID;
                FOR V_FATORES IN C_FATORES_RECEITA LOOP
                    INSERT INTO FP_APLICADOS (
                        OPERACAO_ID,
                        FP_ID,
                        QUANTIDADE
                    ) VALUES (
                        V_ID_OPERACAO,
                        V_FATORES.FP_ID,
                        V_FATORES.QUANTIDADE * V_AREA_PARCELA
                    );
                END LOOP;

                INSERT INTO APLICACAO_FP_CULTURA (
                    OPERACAO_ID,
                    CULTURA_ID,
                    MODO_AFP_ID
                ) VALUES (
                    V_ID_OPERACAO,
                    V_CULTURAS.ID,
                    V_ID_MODO_APLICACAO
                );
                DBMS_OUTPUT.PUT_LINE('Operacao registada com sucesso com o ID '
                                     || V_ID_OPERACAO
                                     || ' na data '
                                     || P_DATA);
            END LOOP;

            INSERT INTO REGA (
                OPERACAO_ID,
                DURACAO,
                SETOR_ID
            ) VALUES (
                V_ID_OPERACAO,
                P_DURACAO,
                V_ID_SETOR
            );
        EXCEPTION
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20004, 'Erro desconhecido');
        END;

        DBMS_OUTPUT.PUT_LINE('Número de setor: '
                             || P_NUM_SETOR);
        DBMS_OUTPUT.PUT_LINE('Duração: '
                             || P_DURACAO);
        DBMS_OUTPUT.PUT_LINE('Número de receita: '
                             || P_NUM_RECEITA);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END REGISTAR_REGA;
END PKG_REGA;
/