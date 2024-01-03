/*
** USBD31 Como Gestor Agrícola, pretendo registar uma receita de fertirrega para usar em operações de rega.

<Caso de sucesso>
Inserir Receita 22
Tecniferti MOL, Tecniferti, 60 l/ha
Kiplant AllGrip, Asfertglobal, 2 l/ha
soluSOP 52, K+S, 2.5 kg/ha

Fazer pesquisa para mostrar que a receita ficou registada, incluindo os 3 componentes.
<\Caso de sucesso>
*/

BEGIN
    CREATE_RECEITA_FERTIRREGA(22, 'Tecniferti Mol', 'Tecniferti', 60);
END;
/

BEGIN
    CREATE_RECEITA_FERTIRREGA(22, 'Kiplant Allgrip', 'Asfertglobal', 2);
END;
/

BEGIN
    CREATE_RECEITA_FERTIRREGA(22, 'Solusop 52', 'K+S', 2.5);
END;
/

SELECT * FROM RECEITA_FERTIRREGA WHERE NUM_RECEITA = 22;

CREATE OR REPLACE VIEW RECEITA_FERTIRREGA_TEST_22 AS
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
        NUM_RECEITA = 22;

SELECT * FROM RECEITA_FERTIRREGA_TEST_22;