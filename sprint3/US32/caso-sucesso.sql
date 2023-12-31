BEGIN
    PKG_REGA.REGISTAR_REGA( P_DATA => TO_DATE('2023-09-02 05:00', 'YYYY-MM-DD HH24:MI'), P_NUM_SETOR => 10, P_DURACAO => 90, P_NUM_RECEITA => 10 );
END;
/

SELECT
    PA.DESIGNACAO                              AS PARCELA,
    CONCAT(TP.DESIGNACAO, CONCAT(' ', P.NOME)) AS "Planta",
    R.DURACAO
FROM
    REGA             R
    LEFT JOIN SETOR S
    ON R.SETOR_ID = S.ID
    LEFT JOIN CULTURA C
    ON C.SETOR_ID = S.ID
    LEFT JOIN PLANTA P
    ON C.PLANTA_ID = P.ID
    LEFT JOIN TIPO_PLANTA TP
    ON P.TIPO_PLANTA_ID = TP.ID
    LEFT JOIN PARCELA_AGRICOLA PA
    ON C.PARCELA_ID = PA.ID
WHERE
    R.OPERACAO_ID = 1921;

SELECT
    PA.DESIGNACAO                              AS PARCELA,
    PA.AREA                                    AS AREA,
    CONCAT(TP.DESIGNACAO, CONCAT(' ', P.NOME)) AS "Planta",
    FP.DESIGNACAO                              AS FERTILIZANTE,
    FPA.QUANTIDADE                             AS QUANTIDADE
FROM
    APLICACAO_FP_CULTURA AP
    LEFT JOIN CULTURA C
    ON AP.CULTURA_ID = C.ID
    LEFT JOIN PLANTA P
    ON C.PLANTA_ID = P.ID
    LEFT JOIN TIPO_PLANTA TP
    ON P.TIPO_PLANTA_ID = TP.ID
    LEFT JOIN PARCELA_AGRICOLA PA
    ON C.PARCELA_ID = PA.ID
    LEFT JOIN FP_APLICADOS FPA
    ON FPA.OPERACAO_ID = AP.OPERACAO_ID
    LEFT JOIN FATOR_PRODUCAO FP
    ON FPA.FP_ID= FP.ID
WHERE
    AP.OPERACAO_ID = 1920;

SELECT
    PA.DESIGNACAO                              AS PARCELA,
    PA.AREA                                    AS AREA,
    CONCAT(TP.DESIGNACAO, CONCAT(' ', P.NOME)) AS "Planta",
    FP.DESIGNACAO                              AS FERTILIZANTE,
    FPA.QUANTIDADE                             AS QUANTIDADE
FROM
    APLICACAO_FP_CULTURA AP
    LEFT JOIN CULTURA C
    ON AP.CULTURA_ID = C.ID
    LEFT JOIN PLANTA P
    ON C.PLANTA_ID = P.ID
    LEFT JOIN TIPO_PLANTA TP
    ON P.TIPO_PLANTA_ID = TP.ID
    LEFT JOIN PARCELA_AGRICOLA PA
    ON C.PARCELA_ID = PA.ID
    LEFT JOIN FP_APLICADOS FPA
    ON FPA.OPERACAO_ID = AP.OPERACAO_ID
    LEFT JOIN FATOR_PRODUCAO FP
    ON FPA.FP_ID= FP.ID
WHERE
    AP.OPERACAO_ID = 1921;