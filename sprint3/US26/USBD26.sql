DROP TABLE OPERATIONS_LOG;

CREATE TABLE OPERATIONS_LOG (
    LOG_ID NUMBER(10) GENERATED AS IDENTITY,
    LOG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    OPERATION_ID NUMBER(10) NOT NULL,
    OPERATION_TYPE VARCHAR2(200) NOT NULL,
    OPERATION_DATE DATE NOT NULL,
    OPERATION_STATE VARCHAR2(200) DEFAULT 'sucedida',
    ADDITIONAL_INFO CLOB,
    PRIMARY KEY (LOG_ID)
);

CREATE OR REPLACE TRIGGER LOG_SEMEADURA_OPERATION AFTER
    INSERT OR UPDATE ON SEMEADURA FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    V_ADDITIONAL_INFO := '{ "Quantidade de Semente": ' || :NEW.QUANTIDADE_SEMENTE ||
    ', "Cultura ID": ' || :NEW.CULTURA_ID || '}';
    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Semeadura',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_COLHEITA_OPERATION AFTER
    INSERT OR UPDATE ON COLHEITA FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    V_ADDITIONAL_INFO := '{ "Quantidade Colhida": ' || :NEW.QUANTIDADE ||
    ', "Cultura ID": ' || :NEW.CULTURA_ID ||
    ', "Produto ID:": ' || :NEW.PRODUTO_ID || '}';
    
    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Colheita',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_MONDA_OPERATION AFTER
    INSERT OR UPDATE ON MONDA FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    V_ADDITIONAL_INFO := '{ "Area": ' || :NEW.AREA ||
    ', "Cultura ID": ' || :NEW.CULTURA_ID || '}';
    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Monda',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_PLANTACAO_OPERATION AFTER
    INSERT OR UPDATE ON PLANTACAO FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;

    V_ADDITIONAL_INFO := '{ "Numero de Plantas": ' || :NEW.num_plantas ||
    ',"Compasso": ' || :NEW.compasso ||
    ', "Distancia entre Filas": ' || :NEW.distancia_filas ||
    ', "Cultura ID": ' || :NEW.CULTURA_ID || '}';

    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Plantacao',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_MOVIMENTACAO_SOLO_OPERATION AFTER
    INSERT OR UPDATE ON MOVIMENTACAO_SOLO FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;

    V_ADDITIONAL_INFO := '{ "Area": ' || :NEW.area ||
    ', "Parcela ID": ' || :NEW.parcela_id || '}';

    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Movimentacao do Solo',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_REGA_OPERATION AFTER
    INSERT OR UPDATE ON REGA FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
    V_COUNT           NUMBER(10);
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    SELECT
        COUNT(*) INTO V_COUNT
    FROM
        FERTIRREGA
    WHERE
        OPERACAO_ID=:NEW.OPERACAO_ID;

    IF V_COUNT = 0 THEN
        V_ADDITIONAL_INFO := '{ "Duracao": ' || :NEW.duracao ||
            ', "Setor ID": ' || :NEW.setor_id || '}';

        INSERT INTO OPERATIONS_LOG (
            OPERATION_ID,
            OPERATION_TYPE,
            OPERATION_DATE,
            OPERATION_STATE,
            ADDITIONAL_INFO
        ) VALUES (
            :NEW.OPERACAO_ID,
            'Rega',
            V_OPERATION_DATE,
            V_OPERATION_STATE,
            V_ADDITIONAL_INFO
        );
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_APLICACAO_SOLO_OPERATION AFTER
    INSERT OR UPDATE ON APLICACAO_FP_SOLO FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
    V_AREA            FLOAT(10);
    TYPE FP_RECORD IS RECORD (
        DESIGNACAO FATOR_PRODUCAO.DESIGNACAO%TYPE,
        QUANTIDADE NUMBER(10)
    );
    TYPE FP_TABLE IS
        TABLE OF FP_RECORD INDEX BY BINARY_INTEGER;
    V_FPS             FP_TABLE;
    CURSOR C_FPS IS
    SELECT
        FP.DESIGNACAO,
        FPA.QUANTIDADE
    FROM
        FATOR_PRODUCAO FP
        RIGHT JOIN FP_APLICADOS FPA
        ON FP.ID = FPA.FP_ID
    WHERE
        FPA.OPERACAO_ID = :NEW.OPERACAO_ID;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    SELECT
        COALESCE(AREA, NULL) INTO V_AREA
    FROM
        APLICACAO_FP
    WHERE
        OPERACAO_ID=:NEW.OPERACAO_ID;
    V_ADDITIONAL_INFO := '{ "Parcela ID": '
                         || :NEW.PARCELA_ID;
    IF V_AREA IS NOT NULL THEN
        V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                             || ', "Area": '
                             || V_AREA;
    END IF;

    V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                         || ', "Fatores de Producao": [';
    OPEN C_FPS;
    LOOP
        FETCH C_FPS BULK COLLECT INTO V_FPS LIMIT 100;
        EXIT WHEN V_FPS.COUNT = 0;
        FOR I IN 1..V_FPS.COUNT LOOP
            V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                                 || '{"Designacao": "'
                                 || V_FPS(I).DESIGNACAO
                                 || '", "Quantidade": '
                                 || V_FPS(I).QUANTIDADE
                                 || '}';
            IF I < V_FPS.COUNT THEN
                V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                                     || ', ';
            END IF;
        END LOOP;
    END LOOP;

    CLOSE C_FPS;
    V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                         || ']}';
    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Aplicacao no Solo',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
    
EXCEPTION
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER LOG_APLICACAO_CULTURA_OPERATION AFTER
    INSERT OR UPDATE ON APLICACAO_FP_CULTURA FOR EACH ROW
DECLARE
    V_OPERATION_DATE  TIMESTAMP;
    V_OPERATION_STATE VARCHAR2(200);
    V_ADDITIONAL_INFO CLOB;
    V_AREA            FLOAT(10);
    V_MODO_AFP        VARCHAR2(200);
    TYPE FP_RECORD IS RECORD (
        DESIGNACAO FATOR_PRODUCAO.DESIGNACAO%TYPE,
        QUANTIDADE NUMBER(10)
    );
    TYPE FP_TABLE IS
        TABLE OF FP_RECORD INDEX BY BINARY_INTEGER;
    V_FPS             FP_TABLE;
    CURSOR C_FPS IS
    SELECT
        FP.DESIGNACAO,
        FPA.QUANTIDADE
    FROM
        FATOR_PRODUCAO FP
        LEFT JOIN FP_APLICADOS FPA
        ON FP.ID = FPA.FP_ID
    WHERE
        FPA.OPERACAO_ID = :NEW.OPERACAO_ID;
BEGIN
    SELECT
        DATA,
        ESTADO INTO V_OPERATION_DATE,
        V_OPERATION_STATE
    FROM
        OPERACAO
    WHERE
        ID=:NEW.OPERACAO_ID;
    SELECT
        DESIGNACAO INTO V_MODO_AFP
    FROM
        MODO_AFP
    WHERE
        ID=:NEW.MODO_AFP_ID;
    SELECT
        COALESCE(AREA, NULL) INTO V_AREA
    FROM
        APLICACAO_FP
    WHERE
        OPERACAO_ID=:NEW.OPERACAO_ID;
    V_ADDITIONAL_INFO := '{"Cultura ID": '
                         || :NEW.CULTURA_ID;
    IF V_AREA IS NOT NULL THEN
        V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                             || ', "Area": '
                             || V_AREA;
    END IF;

    V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                         || ', "Fatores de Producao": [';
    OPEN C_FPS;
    LOOP
        FETCH C_FPS BULK COLLECT INTO V_FPS LIMIT 100;
        EXIT WHEN V_FPS.COUNT = 0;
        FOR I IN 1..V_FPS.COUNT LOOP
            V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                                 || '{"Designacao": "'
                                 || V_FPS(I).DESIGNACAO
                                 || '", "Quantidade": '
                                 || V_FPS(I).QUANTIDADE
                                 || '}';
            IF I < V_FPS.COUNT THEN
                V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                                     || ', ';
            END IF;
        END LOOP;
    END LOOP;

    CLOSE C_FPS;
    V_ADDITIONAL_INFO := V_ADDITIONAL_INFO
                         || ']}';
    INSERT INTO OPERATIONS_LOG (
        OPERATION_ID,
        OPERATION_TYPE,
        OPERATION_DATE,
        OPERATION_STATE,
        ADDITIONAL_INFO
    ) VALUES (
        :NEW.OPERACAO_ID,
        'Aplicacao na Cultura',
        V_OPERATION_DATE,
        V_OPERATION_STATE,
        V_ADDITIONAL_INFO
    );
EXCEPTION
    WHEN OTHERS THEN
        RAISE;
END;
/
