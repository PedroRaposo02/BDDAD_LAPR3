
--view all TIPO_PLANTA and PLANTA
CREATE OR REPLACE VIEW V_TIPO_PLANTA_PLANTA AS
SELECT
    TP.ID AS ID_TIPO_PLANTA,
    TP.DESIGNACAO AS DESIGNACAO_TIPO_PLANTA,
    P.ID AS ID_PLANTA,
    P.NOME AS NOME_PLANTA
FROM

    TIPO_PLANTA TP
    INNER JOIN PLANTA P ON TP.ID = P.TIPO_PLANTA_ID;


--Testing V_TIPO_PLANTA_PLANTA
SELECT * FROM V_TIPO_PLANTA_PLANTA;



--view all MODO_AFP
CREATE OR REPLACE VIEW V_MODO_AFP AS
SELECT
    ID AS ID_MODO_AFP,
    DESIGNACAO AS DESIGNACAO_MODO_AFP
FROM
    MODO_AFP;

--Testing V_MODO_AFP
SELECT * FROM V_MODO_AFP;