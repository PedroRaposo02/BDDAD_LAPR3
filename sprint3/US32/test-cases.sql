--------------------------------------------------------------------------------
-- TESTE DO PROCEDURE PARA REGISTAR REGA
--------------------------------------------------------------------------------
BEGIN
    PKG_REGA.REGISTAR_REGA( P_DATA => TO_DATE('2023-06-02 07:30', 'YYYY-MM-DD HH24:MI'), P_NUM_SETOR => 41, P_DURACAO => 12 );
END;
/

SELECT
    *
FROM
    REGA R
WHERE
    R.OPERACAO_ID =1893;

--------------------------------------------------------------------------------
-- TESTE DO PROCEDURE PARA REGISTAR FERTIRREGA
--------------------------------------------------------------------------------
BEGIN
    PKG_REGA.REGISTAR_REGA( P_DATA => TO_DATE('2023-06-02 07:30', 'YYYY-MM-DD HH24:MI'), P_NUM_SETOR => 41, P_DURACAO => 120, P_NUM_RECEITA => 10 );
END;
/

SELECT
    *
FROM
    FERTIRREGA 
WHERE
    OPERACAO_ID =1894;
