--------------------------------------------------------------------------------
-- PLANTA
--------------------------------------------------------------------------------
DECLARE
    V_ID_TIPO_PLANTA INTEGER;
    V_ID_PLANTA      INTEGER;
BEGIN
    BEGIN
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Abobora';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO TIPO_PLANTA (
                DESIGNACAO
            ) VALUES (
                'Abobora'
            ) RETURNING ID INTO V_ID_TIPO_PLANTA;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END;

    BEGIN
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Manteiga'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO PLANTA (
                NOME,
                TIPO_PLANTA_ID,
                TIPO_PLANTACAO
            ) VALUES (
                'Manteiga',
                V_ID_TIPO_PLANTA,
                'Temporaria'
            );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- PARCELA AGRICOLA
--------------------------------------------------------------------------------
DECLARE
    V_ID_PARCELA_AGRICOLA INTEGER;
BEGIN
    BEGIN
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO PARCELA_AGRICOLA (
                ID,
                DESIGNACAO,
                AREA
            ) VALUES (
                500,
                'Campo Novo',
                1.1
            );
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- FATORES PRODUCAO / COMPONENTES
--------------------------------------------------------------------------------
DECLARE
    V_ID_FATOR_PRODUCAO INTEGER;
BEGIN
    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Fertimax Extrume De Cavalo',
            'Nutrofertil',
            'Granulado',
            'Adubo',
            'Solo'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Materia Organica',
            50
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Azoto Organico',
            3
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Fosforo Total',
            0.8
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Potassio Total',
            0.4
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Calcio Total',
            1.6
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Magnesio Total',
            0.3
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Boro Total',
            0.004
        );
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Biofertil N6',
            'Nutrofertil',
            'Granulado',
            'Adubo',
            'Solo'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Materia Organica',
            53
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Azoto Organico',
            6.4
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Fosforo Total',
            2.5
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Potassio Total',
            2.4
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Calcio Total',
            6
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Magnesio Total',
            0.3
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Boro Total',
            0.002
        );
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Tecniferti Mol',
            'Tecniferti',
            'Liquido',
            'Materia Organica',
            'Liquida'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Materia Organica',
            27
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Azoto',
            3.6
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Azoto Organico',
            2
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Fosforo Total',
            1
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Potassio Total',
            3
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Carbono Organico Total',
            15
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Acidos Fulvicos',
            10
        );
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Solusop 52',
            'K+S',
            'Po Molhavel',
            'Adubo',
            'Organico'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Enxofre',
            45
        );
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Potassio Total',
            52.5
        );
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Floracal Flow Sl',
            'Plymag',
            'Liquido',
            'Adubo',
            'Liquido'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Oxido De Calcio',
            35
        );
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Kiplant Allgrip',
            'Asfertglobal',
            'Liquido',
            'Adubo',
            'Liquido'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    END;

    BEGIN
        INSERT INTO FATOR_PRODUCAO (
            DESIGNACAO,
            FABRICANTE,
            FORMATO,
            TIPO,
            APLICACAO
        ) VALUES (
            'Cuperdem',
            'Asfertglobal',
            'Liquido',
            'Adubo',
            'Liquido'
        ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
        INSERT INTO COMPONENTE (
            FATOR_PRODUCAO_ID,
            COMPONENTE,
            PERCENTAGEM
        ) VALUES (
            V_ID_FATOR_PRODUCAO,
            'Cobre',
            6
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- SETORES REGA // CULTURAS
--------------------------------------------------------------------------------
DECLARE
    V_ID_SETOR            INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            2500,
            10
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Galega'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Picual'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            1500,
            11
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            3500,
            21
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Da Ponte';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Jonagored'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Da Ponte';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Fuji'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Da Ponte';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Royal Gala'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2017-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Da Ponte';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Royal Gala'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Da Ponte';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            3500,
            22
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2019-05-01', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2023-04-01', 'YYYY-MM-DD'),
            2500,
            41
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Cenoura';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Sugarsnax Hybrid'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            DATA_FINAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2023-04-05', 'YYYY-MM-DD'),
            TO_DATE('2023-05-31', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Cenoura';
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Danvers Half Long'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            DATA_FINAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2023-04-05', 'YYYY-MM-DD'),
            TO_DATE('2023-10-08', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO SETOR (
            DATA_INICIAL,
            CAUDAL_MAXIMO,
            NUM_SETOR
        ) VALUES (
            TO_DATE('2023-04-01', 'YYYY-MM-DD'),
            3500,
            42
        ) RETURNING ID INTO V_ID_SETOR;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Abobora'
            AND ID = 15;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Novo';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Manteiga'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        INSERT INTO CULTURA (
            DATA_INICIAL,
            DATA_FINAL,
            PARCELA_ID,
            PLANTA_ID,
            SETOR_ID
        ) VALUES (
            TO_DATE('2023-04-06', 'YYYY-MM-DD'),
            TO_DATE('2023-09-10', 'YYYY-MM-DD'),
            V_ID_PARCELA_AGRICOLA,
            V_ID_PLANTA,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- RECEITAS FERTIRREGA // FATORES_PRODUCAO_RECEITA
--------------------------------------------------------------------------------
DECLARE
    V_ID_RECEITA_FERTIRREGA INTEGER;
    V_ID_FP_RECEITA         INTEGER;
BEGIN
    BEGIN
        INSERT INTO RECEITA_FERTIRREGA (
            NUM_RECEITA
        ) VALUES (
            10
        ) RETURNING ID INTO V_ID_RECEITA_FERTIRREGA;
        SELECT
            ID INTO V_ID_FP_RECEITA
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Top'
            AND FABRICANTE = 'K+S';
        INSERT INTO FP_RECEITA (
            RECEITA_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_RECEITA_FERTIRREGA,
            V_ID_FP_RECEITA,
            1.5
        );
        SELECT
            ID INTO V_ID_FP_RECEITA
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Solusop 52'
            AND FABRICANTE = 'K+S';
        INSERT INTO FP_RECEITA (
            RECEITA_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_RECEITA_FERTIRREGA,
            V_ID_FP_RECEITA,
            2.5
        );
        SELECT
            ID INTO V_ID_FP_RECEITA
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Floracal Flow Sl'
            AND FABRICANTE = 'Plymag';
        INSERT INTO FP_RECEITA (
            RECEITA_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_RECEITA_FERTIRREGA,
            V_ID_FP_RECEITA,
            1.7
        );
    END;

    BEGIN
        INSERT INTO RECEITA_FERTIRREGA (
            NUM_RECEITA
        ) VALUES (
            11
        ) RETURNING ID INTO V_ID_RECEITA_FERTIRREGA;
        SELECT
            ID INTO V_ID_FP_RECEITA
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Tecniferti Mol'
            AND FABRICANTE = 'Tecniferti';
        INSERT INTO FP_RECEITA (
            RECEITA_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_RECEITA_FERTIRREGA,
            V_ID_FP_RECEITA,
            60
        );
        SELECT
            ID INTO V_ID_FP_RECEITA
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Kiplant Allgrip'
            AND FABRICANTE = 'Asfertglobal';
        INSERT INTO FP_RECEITA (
            RECEITA_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_RECEITA_FERTIRREGA,
            V_ID_FP_RECEITA,
            2
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- LAMEIRO DA PONTE
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--Operaçoes de Rega (LAMEIRO DA PONTE)
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-14 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-01 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-15 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-30 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-07 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-14 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-21 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-28 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-04 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-11 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-18 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-25 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-01 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-08 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-15 22:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 21;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--Operaçoes de Colheita (LAMEIRO DA PONTE)
--------------------------------------------------------------------------------
DECLARE
    V_ID_PRODUTO    INTEGER;
    V_ID_OPERACAO   INTEGER;
    V_ID_PLANTA     INTEGER;
    V_ID_CULTURA    INTEGER;
    V_ID_PARCELA    INTEGER;
    V_OPERACAO_DATA DATE;
BEGIN
 --FIRST OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-18', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Royal Gala';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Royal Gala';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Royal Gala',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --SECOND OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-30', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Royal Gala';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Royal Gala';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Royal Gala',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            900,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --THIRD OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-05', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Jonagored';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Jonagored';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Jonagored',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            900,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --FOURTH OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-08', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Jonagored';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Jonagored';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Jonagored',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            1050,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --FIFTH OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-28', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Fuji';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Fuji';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Fuji',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            950,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --SIXTH OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-10-03', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Lameiro Da Ponte';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Fuji';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Fuji';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Fuji',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            800,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--LAMEIRO DO MOINHO
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- OPERACOES DE PLANTACAO (LAMEIRO DO MOINHO)
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
BEGIN
 --1st PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-09', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Porta Da Loja'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            50,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --2nd PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-09', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Malapio'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            20,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --3rd PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-10', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Pipo De Basto'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            40,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --4th PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-10', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Canada'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            30,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --5th PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-11', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Grand Fay'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            40,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --6th PLANTACAO
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-11', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = (
                SELECT
                    ID
                FROM
                    PLANTA
                WHERE
                    NOME = 'Gronho Doce'
            )
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            COMPASSO,
            DISTANCIA_FILAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            50,
            5,
            5,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- OPERACOES DE APLICAÇAO FATOR DE PRODUCAO (LAMEIRO DO MOINHO)
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
-- APLICACAO FATOR PRODUCAO NO SOLO (LAMEIRO DO MOINHO)
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_FATOR_PRODUCAO   INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2019-01-04', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID,
            AREA
        ) VALUES (
            V_ID_OPERACAO,
            1.1
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        INSERT INTO APLICACAO_FP_SOLO (
            OPERACAO_ID,
            PARCELA_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_PARCELA_AGRICOLA
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            3200
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- APLICACAO FATOR PRODUCAO NA CULTURA (LAMEIRO DO MOINHO)
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_FATOR_PRODUCAO   INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_MODO_AFP         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-06', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID,
            AREA
        ) VALUES (
            V_ID_OPERACAO,
            1.1
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            100
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-06', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            40
        );
    END;
 --------------------------------------------------------------------------------

 /*
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-06', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            80
        );
    END;
*/
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-06', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            60
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            80
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2020-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            100
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            150
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            60
        );
    END;
 --------------------------------------------------------------------------------

 /*
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-08', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            120
        );
    END;
*/
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            90
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-07', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            120
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-08', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Fertimax Extrume De Cavalo';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            150
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            150
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            60
        );
    END;
 --------------------------------------------------------------------------------

 /*
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            120
        );
    END;
*/
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-16', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            90
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-16', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            120
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-16', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Biofertil N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Solo';
        INSERT INTO APLICACAO_FP_CULTURA (
            OPERACAO_ID,
            CULTURA_ID,
            MODO_AFP_ID
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_CULTURA,
            V_ID_MODO_AFP
        );
        INSERT INTO FP_APLICADOS (
            OPERACAO_ID,
            FP_ID,
            QUANTIDADE
        ) VALUES (
            V_ID_OPERACAO,
            V_ID_FATOR_PRODUCAO,
            150
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                5
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                2
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                4
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                3
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                4
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'Epso Microtop';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Macieira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                5
            );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- OPERACOES DE COLHEITA (LAMEIRO DO MOINHO)
--------------------------------------------------------------------------------
DECLARE
    V_ID_PRODUTO          INTEGER;
    V_ID_OPERACAO         INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
BEGIN
 --1st COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Canada';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Canada';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Canada',
                    V_ID_PLANTA
                );
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --2nd COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-16', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Grand Fay';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Grand Fay',
                    V_ID_PLANTA
                );
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            600,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --3rd COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-20', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Reinette Ou Grand Fay';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Grand Fay';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Grand Fay',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --4th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-27', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Pipo De Basto';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Pipo De Basto',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            600,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --5th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-10-05', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Pipo De Basto';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Pipo De Basto';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Pipo De Basto',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --6th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-10-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Gronho Doce';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Gronho Doce';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Gronho Doce',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            1200,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --7th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-10-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Malapio';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Malapio';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Malapio',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --8th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-11-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Porta Da Loja';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Porta Da Loja',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            700,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --9th COLHEITA
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-11-15', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Lameiro Do Moinho';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Porta Da Loja';
        BEGIN
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Maça Porta Da Loja';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Maça Porta Da Loja',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            (PLANTA_ID = V_ID_PLANTA)
            AND (PARCELA_ID = V_ID_PARCELA_AGRICOLA);
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            800,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CAMPO GRANDE
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- OPERACAO DE PLANTACAO (CAMPO GRANDE)
--------------------------------------------------------------------------------

DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2016-10-12', 'YYYY-MM-DD')
        )RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        INSERT INTO PLANTACAO (
            OPERACAO_ID,
            NUM_PLANTAS,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            40,
            V_ID_CULTURA
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- OPERACOES DE APLICACAO DE FATOR DE PRODUCAO EM CULTURA (CAMPO GRANDE)
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO         INTEGER;
    V_ID_FATOR_PRODUCAO   INTEGER;
    V_ID_PARCELA_AGRICOLA INTEGER;
    V_ID_MODO_AFP         INTEGER;
    V_ID_CULTURA          INTEGER;
    V_ID_PLANTA           INTEGER;
    V_ID_TIPO_PLANTA      INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-13', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Picual'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                120
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Galega'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                180
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2021-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                240
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Picual'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                120
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Galega'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                180
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2022-01-13', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                240
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Picual'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                120
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Galega'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                180
            );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-01-12', 'YYYY-MM-DD')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_FATOR_PRODUCAO
        FROM
            FATOR_PRODUCAO
        WHERE
            DESIGNACAO = 'BIOFERTIL N6';
        INSERT INTO APLICACAO_FP (
            OPERACAO_ID
        ) VALUES (
            V_ID_OPERACAO
        );
        SELECT
            ID INTO V_ID_PARCELA_AGRICOLA
        FROM
            PARCELA_AGRICOLA
        WHERE
            DESIGNACAO = 'Campo Grande';
        SELECT
            ID INTO V_ID_TIPO_PLANTA
        FROM
            TIPO_PLANTA
        WHERE
            DESIGNACAO = 'Oliveira';
        SELECT
            ID INTO V_ID_PLANTA
        FROM
            PLANTA
        WHERE
            NOME = 'Arbequina'
            AND TIPO_PLANTA_ID = V_ID_TIPO_PLANTA;
        SELECT
            ID INTO V_ID_CULTURA
        FROM
            CULTURA
        WHERE
            PLANTA_ID = V_ID_PLANTA
            AND PARCELA_ID = V_ID_PARCELA_AGRICOLA;
        SELECT
            ID INTO V_ID_MODO_AFP
        FROM
            MODO_AFP
        WHERE
            DESIGNACAO = 'Foliar';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO MODO_AFP (
                DESIGNACAO
            ) VALUES (
                'Foliar'
            ) RETURNING ID INTO V_ID_MODO_AFP;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                 || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            INSERT INTO APLICACAO_FP_CULTURA (
                OPERACAO_ID,
                CULTURA_ID,
                MODO_AFP_ID
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_CULTURA,
                V_ID_MODO_AFP
            );
            INSERT INTO FP_APLICADOS (
                OPERACAO_ID,
                FP_ID,
                QUANTIDADE
            ) VALUES (
                V_ID_OPERACAO,
                V_ID_FATOR_PRODUCAO,
                240
            );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
-- OPERACOES DE COLHEITA (CAMPO GRANDE)
--------------------------------------------------------------------------------
DECLARE
    V_ID_PRODUTO    INTEGER;
    V_ID_OPERACAO   INTEGER;
    V_ID_PLANTA     INTEGER;
    V_ID_CULTURA    INTEGER;
    V_ID_PARCELA    INTEGER;
    V_OPERACAO_DATA DATE;
BEGIN
 --FIRST OPERATION
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-11-02', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Campo Grande';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Arbequina';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Azeitona Arbequina';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Azeitona Arbequina',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            400,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-11-05', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Campo Grande';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Picual';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Azeitona Picual';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Azeitona Picual',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            300,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-11-08', 'YYYY-MM-DD')
        ) RETURNING ID, DATA INTO V_ID_OPERACAO, V_OPERACAO_DATA;
        BEGIN
            SELECT
                ID INTO V_ID_PARCELA
            FROM
                PARCELA_AGRICOLA
            WHERE
                DESIGNACAO = 'Campo Grande';
            SELECT
                ID INTO V_ID_PLANTA
            FROM
                PLANTA
            WHERE
                NOME = 'Galega';
            SELECT
                ID INTO V_ID_PRODUTO
            FROM
                PRODUTO
            WHERE
                DESIGNACAO = 'Azeitona Galega';
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PRODUTO (
                    DESIGNACAO,
                    PLANTA_ID
                ) VALUES (
                    'Azeitona Galega',
                    V_ID_PLANTA
                ) RETURNING ID INTO V_ID_PRODUTO;
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                                     || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
        END;

        SELECT
            C.ID INTO V_ID_CULTURA
        FROM
            CULTURA          C
            JOIN PLANTA P
            ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
            ON C.PARCELA_ID=PA.ID
        WHERE
            C.PLANTA_ID=V_ID_PLANTA
            AND C.PARCELA_ID=V_ID_PARCELA
            AND ((P.TIPO_PLANTACAO='Permanente'
            AND V_OPERACAO_DATA > C.DATA_INICIAL)
            OR (P.TIPO_PLANTACAO='Temporaria'
            AND V_OPERACAO_DATA BETWEEN C.DATA_INICIAL
            AND C.DATA_FINAL))
            AND ROWNUM = 1;
        INSERT INTO COLHEITA (
            OPERACAO_ID,
            QUANTIDADE,
            PRODUTO_ID,
            CULTURA_ID
        ) VALUES (
            V_ID_OPERACAO,
            350,
            V_ID_PRODUTO,
            V_ID_CULTURA
        );
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE( DBMS_UTILITY.FORMAT_ERROR_STACK
                                  || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CAMPO NOVO
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




























































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE REGA SETOR 10
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-17 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            30,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-17 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            30,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-17 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            60,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-04 06:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-18 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            30,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-10-02 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            60,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
 -- OPERACOES DE REGA SETOR 22
 --------------------------------------------------------------------------------
 --------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-13 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-02 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-01 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-08 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-22 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-29 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-05 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-17 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-24 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-02 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-18 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE REGA SETOR 42
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-12 06:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            60,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-19 06:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            60,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-08 04:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-22 04:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-05 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-19 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-26 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-31 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-05 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE REGA SETOR 41
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-02 07:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-09 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-16 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-23 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-30 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-07 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-14 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-21 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-28 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-06 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-13 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-20 07:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE FERTIRREGA SETOR 10
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-02 06:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            60,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-02 06:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-02 05:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 10;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE FERTIRREGA SETOR 22
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-16 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-15 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            180,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            11
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-10 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-09-09 23:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 22;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE FERTIRREGA SETOR 42
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-06-30 04:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            11
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-15 04:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-29 04:00', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            150,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            11
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-08-12 21:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 42;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;

    COMMIT;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERACOES DE FERTIRREGA SETOR 41
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
    V_ID_OPERACAO INTEGER;
    V_ID_SETOR    INTEGER;
BEGIN
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-05-20 07:30', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            11
        );
    END;
 --------------------------------------------------------------------------------
    BEGIN
        INSERT INTO OPERACAO (
            DATA
        ) VALUES (
            TO_DATE('2023-07-09 06:20', 'YYYY-MM-DD HH24:MI')
        ) RETURNING ID INTO V_ID_OPERACAO;
        SELECT
            ID INTO V_ID_SETOR
        FROM
            SETOR
        WHERE
            NUM_SETOR = 41;
        INSERT INTO REGA (
            OPERACAO_ID,
            DURACAO,
            SETOR_ID
        ) VALUES (
            V_ID_OPERACAO,
            120,
            V_ID_SETOR
        );
        INSERT INTO FERTIRREGA (
            OPERACAO_ID,
            RECEITA
        ) VALUES (
            V_ID_OPERACAO,
            10
        );
    END;

    COMMIT;
END;
/