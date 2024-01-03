DECLARE
  V_ID_TIPO_PLANTA    INTEGER;
  V_ID_PLANTA         INTEGER;
  V_ID_FATOR_PRODUCAO INTEGER;
  V_ID_COMPONENTE     INTEGER;
  V_ID_MODO_AFP       INTEGER;
  V_ID_PARCELA        INTEGER;
  V_ID_CULTURA        INTEGER;
  V_ID_OPERACAO       INTEGER;
  V_ID_PRODUTO        INTEGER;
BEGIN
  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Ameixoeira'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Rainha Claudia Caranguejeira',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Rainha Claudia Caranguejeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'President',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in President Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Stanley',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Stanley Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Angeleno',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Angeleno: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Beauty',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Beauty Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Star',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Star Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Gold',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Gold Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Diamond',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Diamond Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Amber',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Black Amber: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Black Splendor',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Splendor Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Fortuna',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Fortuna: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Friar',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Friar Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'El Dorado',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in El Dorado Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Elephant Heart',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Elephant Heart: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Golden Japan',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Golden Japan Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Harry Pitchon',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Harry Pitchon: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Laetitia',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Laetitia: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Metley',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Metley: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Mirabelle De Nancy',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Mirabelle De Nancy: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Queen Rose',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Queen Rose: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Red Beaut',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Red Beaut Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Santa Rosa',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Santa Rosa: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Shiro',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Shiro Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Sungold',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Sungold: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Wilson Perfection',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Wilson Perfection: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Autumn Giant',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Autumn Giant Ameixoeira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Damasqueiro'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Bulida',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Bulida: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Canino',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Canino: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Liabaud',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Liabaud: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Maillot Jaune',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Maillot Jaune: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Polonais',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Polonais: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Macieira'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Akane',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Akane Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Belgolden',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Belgolden Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Bravo De Esmolfe',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Bravo De Esmolfe Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Casa Nova De Alcobaca',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Casa Nova De Alcobaca Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Erovan',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Erovan Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Fuji',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fuji Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Granny Smith',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Granny Smith Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Golden Delicious',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Golden Delicious Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Hi-Early',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Hi-Early Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Jonagored',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Jonagored Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Lysgolden',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Lysgolden Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Mutsu',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Mutsu Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Porta Da Loja',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Porta Da Loja Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Reinette Ou Canada',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Reinette Ou Canada Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Reinette Ou Grand Fay',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Reinette Ou Grand Fay Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Riscadinha De Palmela',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Riscadinha De Palmela Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Royal Gala',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Royal Gala Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Redchief',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Redchief Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Starking',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Starking Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Summer Red',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Summer Red Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'WellSpur Delicious',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in WellSpur Delicious Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Noiva',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Noiva Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Olho Aberto',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Olho Aberto Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Camoesa Rosa',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Camoesa Rosa Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Malapio',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Malapio Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Gronho Doce',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Gronho Doce Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Pe De Boi',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pe De Boi Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Pinova',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pinova Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Pardo Lindo',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pardo Lindo Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Pipo De Basto',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pipo De Basto Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Prima',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Prima Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Querina',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Querina Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Vista Bella',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Vista Bella Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Golden Smoothee',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Golden Smoothee Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Golden Suprema',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Golden Suprema Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Gloster 69',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Gloster 69 Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Freedom',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Freedom Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Pera Nashi'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Sninseiki',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Sninseiki: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Kumoi',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Kumoi: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Hosui',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Hosui: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Nijisseiki',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Nijisseiki: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Cenoura'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Carson Hybrid',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Carson Hybrid Cenoura: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Red Cored Chantenay',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Red Cored Chantenay Cenoura: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Danvers Half Long',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Danvers Half Long Cenoura: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Imperator 58',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Imperator 58 Cenoura: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Sugarsnax Hybrid',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Nelson Hybrid',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid Cenoura: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Scarlet Nantes',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Tremoco'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Amarelo',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Branco',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Branco Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Milho'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Mas 24.C',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Doce Golden Bantam',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Doce Golden Bantam Milho: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Nabo Greleiro'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Senhora Conceicao',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Senhora Conceicao Nabo Greleiro: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Oliveira'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Cobrancosa',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Cobrancosa: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Arbequina',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Arbequina Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Hojiblanca',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Hojiblanca Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Negrinha Do Freixo',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Negrinha Do Freixo Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Picual',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Macanilha',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Macanilha: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Conserva De Elvas',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Conserva De Elvas Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Galega',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Galega Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Nabo'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'S. Cosme',
      V_ID_TIPO_PLANTA,
      'Temporaria'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in S. Cosme Nabo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO TIPO_PLANTA (
      DESIGNACAO
    ) VALUES (
      'Videira'
    ) RETURNING ID INTO V_ID_TIPO_PLANTA;
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Dona Maria',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PLANTA (
      NOME,
      TIPO_PLANTA_ID,
      TIPO_PLANTACAO
    ) VALUES (
      'Cardinal',
      V_ID_TIPO_PLANTA,
      'Permanente'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                         ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    ROLLBACK;
END;
/

DECLARE
  V_ID_TIPO_PLANTA    INTEGER;
  V_ID_PLANTA         INTEGER;
  V_ID_FATOR_PRODUCAO INTEGER;
  V_ID_COMPONENTE     INTEGER;
  V_ID_MODO_AFP       INTEGER;
  V_ID_PARCELA        INTEGER;
  V_ID_CULTURA        INTEGER;
  V_ID_OPERACAO       INTEGER;
  V_ID_PRODUTO        INTEGER;
BEGIN
  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Calda Bordalesa Ascenza',
      'Ascenza',
      'Po Molhavel',
      'Fitofarmaco',
      'Fungicida'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'CU',
      '0.2'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Calda Bordalesa Ascenza: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Enxofre Bayer 80 Wg',
      'Bayer',
      'Po Molhavel',
      'Fitofarmaco',
      'Fungicida'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'S',
      '0.8'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Enxofre Bayer 80 Wg: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Patentkali',
      'K+S',
      'Granulado',
      'Adubo',
      'Adubo Solo'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'K',
      '0.249'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Mg',
      '0.06'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'S',
      '0.176'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Patentkali: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Esta Kieserit',
      'K+S',
      'Granulado',
      'Adubo',
      'Adubo Solo'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Mg',
      '0.151'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'S',
      '0.208'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Esta Kieserit: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Epso Microtop',
      'K+S',
      'Granulado',
      'Adubo',
      'Adubo Foliar+Fertirrega'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Mg',
      '0.09'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'S',
      '0.124'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'B',
      '0.009'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Mn',
      '0.01'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Epso Microtop: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Epso Top',
      'K+S',
      'Granulado',
      'Adubo',
      'Adubo Foliar'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Mg',
      '0.096'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'S',
      '0.13'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Epso Top: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Biocal Caco3',
      'Biocal',
      'Granulado',
      'Corretor',
      'Correcao Solo'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'CaCO3',
      '0.882'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'MgCO3',
      '0.019'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Biocal Caco3: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Biocal Composto',
      'Biocal',
      'Po',
      'Corretor',
      'Correcao Solo'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'CaCO3',
      '0.717'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'MgCO3',
      '0.148'
    );
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'MgO',
      '0.079'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Biocal Composto: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Sonata',
      'Bayer',
      'Liquido',
      'Fitofarmaco',
      'Fungicida'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Bacillus pumilus',
      '0.9774'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sonata: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Flipper',
      'Bayer',
      'Emulsao De Oleo Em Agua',
      'Fitofarmaco',
      'Insecticida'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      '�cidos gordos (na forma de sais de pot�ssio)',
      '0.478'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Flipper: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO FATOR_PRODUCAO (
      DESIGNACAO,
      FABRICANTE,
      FORMATO,
      TIPO,
      APLICACAO
    ) VALUES (
      'Requiem Prime',
      'Bayer',
      'Liquido',
      'Fitofarmaco',
      'Insecticida'
    ) RETURNING ID INTO V_ID_FATOR_PRODUCAO;
    INSERT INTO COMPONENTE (
      FATOR_PRODUCAO_ID,
      COMPONENTE,
      PERCENTAGEM
    ) VALUES (
      V_ID_FATOR_PRODUCAO,
      'Terpen�ides',
      '0.1442'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Requiem Prime: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                         ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    ROLLBACK;
END;
/

DECLARE
  V_ID_TIPO_PLANTA    INTEGER;
  V_ID_PLANTA         INTEGER;
  V_ID_FATOR_PRODUCAO INTEGER;
  V_ID_COMPONENTE     INTEGER;
  V_ID_MODO_AFP       INTEGER;
  V_ID_PARCELA        INTEGER;
  V_ID_CULTURA        INTEGER;
  V_ID_OPERACAO       INTEGER;
  V_ID_PRODUTO        INTEGER;
BEGIN
  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '101',
      'Campo Da Bouca',
      '1.2'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Da Bouca: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '102',
      'Campo Grande',
      '3.0'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Grande: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '103',
      'Campo Do Poco',
      '1.5'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Do Poco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '104',
      'Lameiro Da Ponte',
      '0.8'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Lameiro Da Ponte: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '105',
      'Lameiro Do Moinho',
      '1.1'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Lameiro Do Moinho: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '106',
      'Horta Nova',
      '0.3'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Horta Nova: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO PARCELA_AGRICOLA (
      ID,
      DESIGNACAO,
      AREA
    ) VALUES (
      '107',
      'Vinha',
      '2.0'
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Vinha: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                         ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    ROLLBACK;
END;
/

DECLARE
  V_ID_TIPO_PLANTA    INTEGER;
  V_ID_PLANTA         INTEGER;
  V_ID_FATOR_PRODUCAO INTEGER;
  V_ID_COMPONENTE     INTEGER;
  V_ID_MODO_AFP       INTEGER;
  V_ID_PARCELA        INTEGER;
  V_ID_CULTURA        INTEGER;
  V_ID_OPERACAO       INTEGER;
  V_ID_PRODUTO        INTEGER;
BEGIN
  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '101',
      V_ID_PLANTA,
      TIMESTAMP '2020-10-10 00:00:00',
      DATE '2021-03-30'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo 101 Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '101',
      V_ID_PLANTA,
      TIMESTAMP '2021-04-10 00:00:00',
      DATE '2021-08-12'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Doce Golden Bantam Milho 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '101',
      V_ID_PLANTA,
      TIMESTAMP '2021-10-03 00:00:00',
      DATE '2022-04-05'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo 101 Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '101',
      V_ID_PLANTA,
      TIMESTAMP '2022-04-15 00:00:00',
      DATE '2022-08-21'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Doce Golden Bantam Milho 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2020-04-05 00:00:00',
      DATE '2020-08-20'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2020-10-12 00:00:00',
      DATE '2021-03-15'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo 103 Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2021-04-03 00:00:00',
      DATE '2021-08-25'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2021-10-06 00:00:00',
      DATE '2022-03-19'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo 103 Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2022-04-08 00:00:00',
      DATE '2022-08-18'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '103',
      V_ID_PLANTA,
      TIMESTAMP '2022-10-12 00:00:00',
      DATE '2023-03-20'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Amarelo 103 Tremoco: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '102',
      V_ID_PLANTA,
      TIMESTAMP '2016-10-06 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2016-10-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Galega Oliveira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '102',
      V_ID_PLANTA,
      TIMESTAMP '2016-10-10 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2016-10-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Scarlet Nantes';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2020-03-10 00:00:00',
      DATE '2020-05-15'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2020-06-02 00:00:00',
      DATE '2020-09-08'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid Cenoura 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2020-09-20 00:00:00',
      DATE '2021-01-10'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in S. Cosme Nabo 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2021-03-10 00:00:00',
      DATE '2021-05-15'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Sugarsnax Hybrid 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Danvers Half Long';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2021-06-02 00:00:00',
      DATE '2021-09-08'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Danvers Half Long Cenoura 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2021-09-20 00:00:00',
      DATE '2022-01-10'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in S. Cosme Nabo 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2022-03-06 00:00:00',
      DATE '2022-05-16'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Sugarsnax Hybrid 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2022-05-30 00:00:00',
      DATE '2022-09-05'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid Cenoura 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo Greleiro'
      AND P.NOME='Senhora Conceicao';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '106',
      V_ID_PLANTA,
      TIMESTAMP '2022-09-20 00:00:00',
      DATE '2023-01-14'
    ) RETURNING ID INTO V_ID_CULTURA;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Senhora Conceicao Nabo Greleiro 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '104',
      V_ID_PLANTA,
      TIMESTAMP '2017-01-07 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Jonagored Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '104',
      V_ID_PLANTA,
      TIMESTAMP '2017-01-08 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fuji 104 Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '104',
      V_ID_PLANTA,
      TIMESTAMP '2017-01-08 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      40.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Royal Gala 104 Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '104',
      V_ID_PLANTA,
      TIMESTAMP '2018-12-10 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Royal Gala 104 Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '107',
      V_ID_PLANTA,
      TIMESTAMP '2018-01-10 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Videira Dona Maria 107: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    INSERT INTO CULTURA (
      PARCELA_ID,
      PLANTA_ID,
      DATA_INICIAL,
      DATA_FINAL
    ) VALUES (
      '107',
      V_ID_PLANTA,
      TIMESTAMP '2018-01-11 00:00:00',
      NULL
    ) RETURNING ID INTO V_ID_CULTURA;
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-11 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Videira Cardinal 107: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                         ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    ROLLBACK;
END;
/

DECLARE
  V_ID_TIPO_PLANTA    INTEGER;
  V_ID_PLANTA         INTEGER;
  V_ID_FATOR_PRODUCAO INTEGER;
  V_ID_COMPONENTE     INTEGER;
  V_ID_MODO_AFP       INTEGER;
  V_ID_PARCELA        INTEGER;
  V_ID_CULTURA        INTEGER;
  V_ID_OPERACAO       INTEGER;
  V_ID_PRODUTO        INTEGER;
BEGIN
  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2016-10-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2016-10-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2016-10-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Plantacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2016-10-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2016-10-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2016-10-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Plantacao Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-01-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-01-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Plantacao 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji Plantacao 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      40.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Plantacao 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-11-04 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-11-04 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-11-04 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-11-04 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-11-04 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-11-04 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-12-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-12-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      15.0
    );
    INSERT INTO MODO_AFP (
      DESIGNACAO
    ) VALUES (
      'Solo'
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2017-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2017-12-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2017-12-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Oliveira Picual Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-01-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-01-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 104 Macieira Fuji: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      40.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-01-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-01-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Dona Maria Plantacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-01-11 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-01-11 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-01-11 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Cardinal Plantacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      6.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      5.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-11-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-11-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-11-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-11-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-11-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-11-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-12-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-12-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PLANTACAO (
      OPERACAO_ID,
      CULTURA_ID,
      NUM_PLANTAS
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Plantacao 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-12-16 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-12-16 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-12-16 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2018-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2018-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2018-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-01-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-01-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-01-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 104 Macieira Fuji: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-01-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-01-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-01-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      40.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.5
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      5.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-02-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-02-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-02-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Esta Kieserit';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      7.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala 104 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-11-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-11-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-11-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-11-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-11-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-11-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-12-16 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-12-16 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-12-16 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2019-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2019-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2019-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.5
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-03-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Scarlet Nantes';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-03-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-03-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.9
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes Sementeira 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-03-30 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO=''
      AND P.NOME='';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-03-30 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-03-30 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Biocal Composto';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      600.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in  Fertilizacao 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-04-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-04-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-04-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.2
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Sementeira 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-05-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Scarlet Nantes';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-05-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-05-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-05-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Scarlet Nantes';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-05-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-05-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1400.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-06-02 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-06-02 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-06-02 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira Cenoura Nelson Hybrid 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-08-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-08-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-08-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Milho',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      3300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Colheita 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-08-28 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-08-28 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-08-28 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Nelson Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-09-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-09-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-09-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1800.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Nelson Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-09-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-09-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-09-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Sementeira 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-10-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-10-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-10-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      36.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 101 Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-10-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-10-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-10-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 103 Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-11-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-11-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-11-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      70.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      50.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      7.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Oliveira Picual Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      40.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 104 Macieira Fuji: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-16 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-16 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-16 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2020-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2020-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2020-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-01-04 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-01-04 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-01-04 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2900.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      2.5
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-03-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-03-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-03-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.9
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-03-14 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-03-14 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-03-14 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO MOVIMENTACAO_SOLO (
      OPERACAO_ID,
      PARCELA_ID,
      AREA
    ) VALUES (
      V_ID_OPERACAO,
      103,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 103 Incorporacao No Solo Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-03-30 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-03-30 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-03-30 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO MOVIMENTACAO_SOLO (
      OPERACAO_ID,
      PARCELA_ID,
      AREA
    ) VALUES (
      V_ID_OPERACAO,
      101,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 101 Incorporacao No Solo Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-04-03 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-04-03 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-04-03 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.2
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Sementeira 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-04-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-04-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-04-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam Sementeira 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-05-02 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO=''
      AND P.NOME='';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-05-02 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-05-02 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Epso Microtop';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    INSERT INTO MODO_AFP (
      DESIGNACAO
    ) VALUES (
      'Foliar'
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Foliar';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Fertilizacao Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-05-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-05-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-05-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-05-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-05-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-05-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1400.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-06-02 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Danvers Half Long';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-06-02 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-06-02 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 106 Cenoura Danvers Half Long: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-07-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-07-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-07-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Dona Maria Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-07-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-07-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-07-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      400.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Dona Maria Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-08-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-08-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-08-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Milho',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      3300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam Colheita 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-08-24 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-08-24 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-08-24 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      900.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-08-25 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-08-25 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-08-25 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Milho',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      3300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Colheita 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-08-28 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Danvers Half Long';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-08-28 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-08-28 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Danvers Half Long: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-09-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-09-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-09-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      800.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-09-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Danvers Half Long';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-09-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-09-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1800.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Danvers Half Long: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-09-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-09-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-09-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      800.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-09-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-09-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-09-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Sementeira 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-09-23 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-09-23 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-09-23 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-10-03 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-10-03 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-10-03 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      36.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 101 Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-10-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-10-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-10-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 103 Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-10-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-10-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-10-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      950.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-03 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-03 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-03 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      750.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Oliveira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      210.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Oliveira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      120.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Colheita Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-11-28 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-11-28 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-11-28 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      70.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-12-03 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-12-03 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-12-03 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-12-16 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-12-16 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-12-16 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 104 Macieira Fuji: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2021-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2021-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2021-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-01-04 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo'
      AND P.NOME='S. Cosme';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-01-04 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-01-04 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2900.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      3.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      3.5
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-03-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-03-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-03-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.9
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-03-19 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-03-19 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-03-19 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO MOVIMENTACAO_SOLO (
      OPERACAO_ID,
      PARCELA_ID,
      AREA
    ) VALUES (
      V_ID_OPERACAO,
      103,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 103 Incorporacao No Solo Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-04-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-04-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-04-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO MOVIMENTACAO_SOLO (
      OPERACAO_ID,
      PARCELA_ID,
      AREA
    ) VALUES (
      V_ID_OPERACAO,
      101,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 101 Incorporacao No Solo Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-04-08 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-04-08 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-04-08 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.2
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Sementeira 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-04-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-04-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-04-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam Sementeira 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-05-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-05-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-05-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      2250.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-05-13 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO=''
      AND P.NOME='';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-05-13 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-05-13 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Epso Microtop';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Foliar';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Fertilizacao Macieira: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-05-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Sugarsnax Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-05-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-05-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Sugarsnax Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-05-30 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-05-30 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-05-30 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira Cenoura Nelson Hybrid 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-07-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-07-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-07-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Dona Maria Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-07-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-07-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-07-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Videira Dona Maria Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Colheita Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Videira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      600.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Colheita Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Doce Golden Bantam';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=101
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Milho',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      3500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam Colheita 101: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Milho'
      AND P.NOME='Mas 24.C';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Milho',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      3300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C Colheita 103: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      950.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-08-24 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-08-24 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-08-24 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      650.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Nelson Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-09-05 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Cenoura'
      AND P.NOME='Nelson Hybrid';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-09-05 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-09-05 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Cenoura',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1900.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 106 Cenoura Nelson Hybrid: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-09-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-09-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-09-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      830.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-09-11 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-09-11 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-09-11 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      750.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-09-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-09-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-09-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      1150.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-09-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo Greleiro'
      AND P.NOME='Senhora Conceicao';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-09-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-09-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      0.6
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao Sementeira 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-10-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-10-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-10-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO SEMEADURA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE_SEMENTE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sementeira 103 Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-10-17 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-10-17 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-10-17 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      850.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-06 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-06 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-06 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Macieira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      900.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji Colheita 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      30.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega Poda 102: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-10 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-10 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-10 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      20.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Poda Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Oliveira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      300.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Colheita: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Oliveira',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Colheita Oliveira Picual: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-11-15 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo Greleiro'
      AND P.NOME='Senhora Conceicao';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-11-15 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-11-15 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo Greleiro',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      50.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-04 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Royal Gala';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-04 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-04 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      70.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Macieira Royal Gala 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-07 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Jonagored';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-07 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-07 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      90.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-11 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Galega';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-11 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-11 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      15.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Galega 102 Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-11 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Oliveira'
      AND P.NOME='Picual';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=102
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-11 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-11 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Patentkali';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      10.0
    );
    SELECT
      ID INTO V_ID_MODO_AFP
    FROM
      MODO_AFP
    WHERE
      DESIGNACAO='Solo';
    INSERT INTO APLICACAO_FP_CULTURA (
      OPERACAO_ID,
      CULTURA_ID,
      MODO_AFP_ID
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_MODO_AFP
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 102 Oliveira Picual Fertilizacao: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-16 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-16 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-16 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      500.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo Greleiro'
      AND P.NOME='Senhora Conceicao';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo Greleiro',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      200.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2022-12-18 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2022-12-18 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2022-12-18 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      700.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Poda Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2023-01-12 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Macieira'
      AND P.NOME='Fuji';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=104
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2023-01-12 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2023-01-12 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PODA (
      OPERACAO_ID,
      CULTURA_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      60.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 104 Macieira Fuji: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2023-01-14 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Nabo Greleiro'
      AND P.NOME='Senhora Conceicao';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=106
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2023-01-14 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2023-01-14 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO PRODUTO (
      DESIGNACAO,
      PLANTA_ID
    ) VALUES (
      'Nabo Greleiro',
      V_ID_PLANTA
    ) RETURNING ID INTO V_ID_PRODUTO;
    INSERT INTO COLHEITA (
      OPERACAO_ID,
      CULTURA_ID,
      PRODUTO_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_CULTURA,
      V_ID_PRODUTO,
      250.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao Colheita 106: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2023-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Dona Maria';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2023-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2023-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      4.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Dona Maria: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2023-01-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Videira'
      AND P.NOME='Cardinal';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=107
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2023-01-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2023-01-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO APLICACAO_FP (
      OPERACAO_ID
    ) VALUES (
      V_ID_OPERACAO
    );
    SELECT
      ID INTO V_ID_FATOR_PRODUCAO
    FROM
      FATOR_PRODUCAO
    WHERE
      DESIGNACAO='Calda Bordalesa Ascenza';
    INSERT INTO FP_APLICADOS (
      OPERACAO_ID,
      FP_ID,
      QUANTIDADE
    ) VALUES (
      V_ID_OPERACAO,
      V_ID_FATOR_PRODUCAO,
      5.0
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Aplicacao Fitofarmaco Videira Cardinal: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  BEGIN
    INSERT INTO OPERACAO (
      DATA,
      ESTADO
    ) VALUES (
      TIMESTAMP '2023-03-20 00:00:00',
      'sucedida'
    ) RETURNING ID INTO V_ID_OPERACAO;
    SELECT
      P.ID INTO V_ID_PLANTA
    FROM
      PLANTA      P
      JOIN TIPO_PLANTA TP
      ON P.TIPO_PLANTA_ID = TP.ID
    WHERE
      TP.DESIGNACAO='Tremoco'
      AND P.NOME='Amarelo';
    SELECT
      C.ID INTO V_ID_CULTURA
    FROM
      CULTURA          C
      JOIN PLANTA P
      ON C.PLANTA_ID=P.ID JOIN PARCELA_AGRICOLA PA
      ON C.PARCELA_ID=PA.ID
    WHERE
      C.PLANTA_ID=V_ID_PLANTA
      AND C.PARCELA_ID=103
      AND ((P.TIPO_PLANTACAO='Permanente'
      AND TIMESTAMP '2023-03-20 00:00:00' > C.DATA_INICIAL)
      OR (P.TIPO_PLANTACAO='Temporaria'
      AND TIMESTAMP '2023-03-20 00:00:00' BETWEEN C.DATA_INICIAL
      AND C.DATA_FINAL))
      AND ROWNUM=1;
    INSERT INTO MOVIMENTACAO_SOLO (
      OPERACAO_ID,
      PARCELA_ID,
      AREA
    ) VALUES (
      V_ID_OPERACAO,
      103,
      1.3
    );
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 103 Incorporacao No Solo Tremoco Amarelo: '
                           || DBMS_UTILITY.FORMAT_ERROR_STACK
                           ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
  END;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK
                         ||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    ROLLBACK;
END;
/