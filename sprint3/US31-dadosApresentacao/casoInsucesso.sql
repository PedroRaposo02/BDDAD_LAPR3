/*
** USBD31 Como Gestor Agrícola, pretendo registar uma receita de fertirrega para usar em operações de rega.
<Caso de insucesso>
Inserir Receita 23
Tecniferti MOL, Tecniferti, 60 l/ha
Kiplant AllFit Plus, Asfertglobal, 2.5 l/ha

Deve dar erro por não existir um dos componentes registado no sistema.
<\Caso de insucesso>
*/

BEGIN
    CREATE_RECEITA_FERTIRREGA(23, 'Tecniferti Mol', 'Tecniferti', 60);
END;
/

BEGIN
    CREATE_RECEITA_FERTIRREGA(23, 'Kiplant Allfit Plus', 'Asfertglobal', 2.5);
END;
/


/*
DELETE FROM FP_RECEITA
WHERE RECEITA_ID IN (
    SELECT ID FROM RECEITA_FERTIRREGA
    WHERE NUM_RECEITA = 23
);
DELETE FROM RECEITA_FERTIRREGA
WHERE NUM_RECEITA = 23;
*/



SELECT * FROM RECEITA_FERTIRREGA WHERE NUM_RECEITA = 23;

CREATE OR REPLACE VIEW RECEITA_FERTIRREGA_TEST_23 AS
    SELECT
        NUM_RECEITA,
        DESIGNACAO,
        FABRICANTE,
        QUANTIDADE
    FROM
        RECEITA_FERTIRREGA
        JOIN FP_RECEITA
        ON RECEITA_FERTIRREGA.ID = FP_RECEITA.RECEITA_ID JOIN FATOR_PRODUCAO
        ON FP_RECEITA.FP_ID = FATOR_PRODUCAO.ID
    WHERE
        NUM_RECEITA = 23;

SELECT * FROM RECEITA_FERTIRREGA_TEST_23;