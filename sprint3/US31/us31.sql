CREATE OR REPLACE PROCEDURE CREATE_RECEITA_FERTIRREGA (
    p_num_receita IN RECEITA_FERTIRREGA.NUM_RECEITA%TYPE,
    p_designacao IN FATOR_PRODUCAO.DESIGNACAO%TYPE,
    p_fabricante IN FATOR_PRODUCAO.FABRICANTE%TYPE,
    p_quantidade IN FP_RECEITA.QUANTIDADE%TYPE
) AS 
    v_id_receita_fertirrega INTEGER;
    v_id_fp_receita INTEGER;
BEGIN
    -- Create RECEITA_FERTIRREGA
    INSERT INTO RECEITA_FERTIRREGA (NUM_RECEITA)
    VALUES (p_num_receita)
    RETURNING ID INTO v_id_receita_fertirrega;

    -- Get  ID of FATOR_PRODUCAO 
    SELECT ID INTO v_id_fp_receita
    FROM FATOR_PRODUCAO
    WHERE DESIGNACAO = p_designacao AND FABRICANTE = p_fabricante;

    -- Associate FATOR_PRODUCAO with FP_RECEITA and RECEITA_FERTIRREGA
    INSERT INTO FP_RECEITA (RECEITA_ID, FP_ID, QUANTIDADE)
    VALUES (v_id_receita_fertirrega, v_id_fp_receita, p_quantidade);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      RAISE;
END CreateFertigationRecipe;
/



BEGIN
    CreateFertigationRecipe(13, 'Tecniferti Mol', 'Tecniferti', 60);
END;
/


BEGIN
    Create(13, 'Kiplant Allgrip', 'Asfertglobal', 2);
END;
/