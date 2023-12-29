DECLARE
    v_id_tipo_planta INTEGER;
    v_id_planta INTEGER;
    v_id_fator_producao INTEGER;
    v_id_componente INTEGER;
    v_id_modo_afp INTEGER;
    v_id_parcela INTEGER;
    v_id_cultura INTEGER;
    v_id_operacao INTEGER;
    v_id_produto INTEGER;
BEGIN
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Ameixoeira') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Rainha Claudia Caranguejeira', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Rainha Claudia Caranguejeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('President', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira President: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Stanley', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Stanley: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Angeleno', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Angeleno Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Beauty', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Black Beauty: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Star', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Star Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Gold', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Black Gold: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Diamond', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Black Diamond: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Amber', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Amber Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Black Splendor', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Black Splendor Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Fortuna', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fortuna Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Friar', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Friar: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('El Dorado', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira El Dorado: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Elephant Heart', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Elephant Heart: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Golden Japan', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Golden Japan Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Harry Pitchon', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Harry Pitchon: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Laetitia', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Laetitia Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Metley', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Metley: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Mirabelle De Nancy', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Mirabelle De Nancy Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Queen Rose', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Queen Rose: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Red Beaut', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Red Beaut: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Santa Rosa', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Santa Rosa Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Shiro', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Shiro: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Sungold', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sungold Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Wilson Perfection', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Ameixoeira Wilson Perfection: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Autumn Giant', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Autumn Giant Ameixoeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Damasqueiro') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Bulida', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Bulida: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Canino', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Canino: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Liabaud', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Damasqueiro Liabaud: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Maillot Jaune', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Maillot Jaune Damasqueiro: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Polonais', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Polonais Damasqueiro: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Macieira') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Akane', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Akane: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Belgolden', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Belgolden: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Bravo De Esmolfe', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Bravo De Esmolfe Macieira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Casa Nova De Alcobaca', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Casa Nova De Alcobaca: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Erovan', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Erovan: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Fuji', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Granny Smith', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Granny Smith: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Golden Delicious', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Golden Delicious: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Hi-Early', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Hi-Early: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Jonagored', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Lysgolden', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Lysgolden: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Mutsu', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Mutsu: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Porta Da Loja', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Porta Da Loja: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Reinette Ou Canada', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Reinette Ou Canada: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Reinette Ou Grand Fay', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Reinette Ou Grand Fay: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Riscadinha De Palmela', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Riscadinha De Palmela: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Royal Gala', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Redchief', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Redchief: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Starking', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Starking: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Summer Red', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Summer Red: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('WellSpur Delicious', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira WellSpur Delicious: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Noiva', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Noiva: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Olho Aberto', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Olho Aberto Macieira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Camoesa Rosa', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Camoesa Rosa: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Malapio', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Malapio Macieira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Gronho Doce', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Gronho Doce: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Pe De Boi', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pe De Boi Macieira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Pinova', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Pinova: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Pardo Lindo', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Pardo Lindo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Pipo De Basto', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pipo De Basto Macieira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Prima', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Prima: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Querina', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Querina: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Vista Bella', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Vista Bella: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Golden Smoothee', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Golden Smoothee: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Golden Suprema', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Golden Suprema: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Gloster 69', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Gloster 69: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Freedom', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Freedom: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Pera Nashi') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Sninseiki', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Sninseiki: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Kumoi', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Kumoi: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Hosui', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Hosui: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Nijisseiki', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Pera Nashi Nijisseiki: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Cenoura') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Carson Hybrid', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Carson Hybrid Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Red Cored Chantenay', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Red Cored Chantenay Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Danvers Half Long', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Danvers Half Long Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Imperator 58', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Imperator 58 Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Sugarsnax Hybrid', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sugarsnax Hybrid Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Nelson Hybrid', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Scarlet Nantes', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Scarlet Nantes Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Tremoco') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Amarelo', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Branco', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Branco: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Milho') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Mas 24.C', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Doce Golden Bantam', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Nabo Greleiro') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Senhora Conceicao', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Oliveira') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Cobrancosa', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cobrancosa Oliveira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Arbequina', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Arbequina: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Hojiblanca', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Hojiblanca Oliveira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Negrinha Do Freixo', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Negrinha Do Freixo Oliveira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Picual', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Picual Oliveira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Macanilha', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Macanilha: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Conserva De Elvas', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Oliveira Conserva De Elvas: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Galega', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Galega Oliveira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Nabo') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('S. Cosme', v_id_tipo_planta, 'Temporaria');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Tipo_Planta (designacao) VALUES ('Videira') RETURNING id INTO v_id_tipo_planta;INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Dona Maria', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Dona Maria Videira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('Cardinal', v_id_tipo_planta, 'Permanente');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cardinal Videira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       dbms_output.put_line(dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
       ROLLBACK;
END;
/
DECLARE
    v_id_tipo_planta INTEGER;
    v_id_planta INTEGER;
    v_id_fator_producao INTEGER;
    v_id_componente INTEGER;
    v_id_modo_afp INTEGER;
    v_id_parcela INTEGER;
    v_id_cultura INTEGER;
    v_id_operacao INTEGER;
    v_id_produto INTEGER;
BEGIN
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Calda Bordalesa Ascenza', 'Ascenza', 'Po Molhavel', 'Fitofarmaco', 'Fungicida') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'CU', '0.2');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Calda Bordalesa Ascenza: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Enxofre Bayer 80 Wg', 'Bayer', 'Po Molhavel', 'Fitofarmaco', 'Fungicida') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'S', '0.8');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Enxofre Bayer 80 Wg: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Patentkali', 'K+S', 'Granulado', 'Adubo', 'Adubo Solo') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'K', '0.249');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Mg', '0.06');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'S', '0.176');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Patentkali: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Esta Kieserit', 'K+S', 'Granulado', 'Adubo', 'Adubo Solo') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Mg', '0.151');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'S', '0.208');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Esta Kieserit: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Epso Microtop', 'K+S', 'Granulado', 'Adubo', 'Adubo Foliar+Fertirrega') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Mg', '0.09');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'S', '0.124');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'B', '0.009');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Mn', '0.01');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Epso Microtop: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Epso Top', 'K+S', 'Granulado', 'Adubo', 'Adubo Foliar') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Mg', '0.096');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'S', '0.13');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Epso Top: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Biocal Caco3', 'Biocal', 'Granulado', 'Corretor', 'Correcao Solo') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'CaCO3', '0.882');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'MgCO3', '0.019');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Biocal Caco3: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Biocal Composto', 'Biocal', 'Po', 'Corretor', 'Correcao Solo') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'CaCO3', '0.717');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'MgCO3', '0.148');
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'MgO', '0.079');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Biocal Composto: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Sonata', 'Bayer', 'Liquido', 'Fitofarmaco', 'Fungicida') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Bacillus pumilus', '0.9774');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Sonata: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Flipper', 'Bayer', 'Emulsao De Oleo Em Agua', 'Fitofarmaco', 'Insecticida') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, '�cidos gordos (na forma de sais de pot�ssio)', '0.478');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Flipper: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('Requiem Prime', 'Bayer', 'Liquido', 'Fitofarmaco', 'Insecticida') RETURNING id INTO v_id_fator_producao;
INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, 'Terpen�ides', '0.1442');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Requiem Prime: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       dbms_output.put_line(dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
       ROLLBACK;
END;
/
DECLARE
    v_id_tipo_planta INTEGER;
    v_id_planta INTEGER;
    v_id_fator_producao INTEGER;
    v_id_componente INTEGER;
    v_id_modo_afp INTEGER;
    v_id_parcela INTEGER;
    v_id_cultura INTEGER;
    v_id_operacao INTEGER;
    v_id_produto INTEGER;
BEGIN
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('101', 'Campo Da Bouca', '1.2');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Da Bouca: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('102', 'Campo Grande', '3.0');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Grande: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('103', 'Campo Do Poco', '1.5');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Campo Do Poco: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('104', 'Lameiro Da Ponte', '0.8');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Lameiro Da Ponte: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('105', 'Lameiro Do Moinho', '1.1');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Lameiro Do Moinho: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('106', 'Horta Nova', '0.3');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Horta Nova: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('107', 'Vinha', '2.0');
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Vinha: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       dbms_output.put_line(dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
       ROLLBACK;
END;
/
DECLARE
    v_id_tipo_planta INTEGER;
    v_id_planta INTEGER;
    v_id_fator_producao INTEGER;
    v_id_componente INTEGER;
    v_id_modo_afp INTEGER;
    v_id_parcela INTEGER;
    v_id_cultura INTEGER;
    v_id_operacao INTEGER;
    v_id_produto INTEGER;
BEGIN
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('101', v_id_planta, TIMESTAMP '2020-10-10 00:00:00', DATE '2021-03-30') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('101', v_id_planta, TIMESTAMP '2021-04-10 00:00:00', DATE '2021-08-12') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam 101: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('101', v_id_planta, TIMESTAMP '2021-10-03 00:00:00', DATE '2022-04-05') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('101', v_id_planta, TIMESTAMP '2022-04-15 00:00:00', DATE '2022-08-21') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam 101: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2020-04-05 00:00:00', DATE '2020-08-20') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2020-10-12 00:00:00', DATE '2021-03-15') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2021-04-03 00:00:00', DATE '2021-08-25') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2021-10-06 00:00:00', DATE '2022-03-19') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2022-04-08 00:00:00', DATE '2022-08-18') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('103', v_id_planta, TIMESTAMP '2022-10-12 00:00:00', DATE '2023-03-20') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('102', v_id_planta, TIMESTAMP '2016-10-06 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2016-10-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Galega Oliveira 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('102', v_id_planta, TIMESTAMP '2016-10-10 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2016-10-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Picual Oliveira 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Scarlet Nantes';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2020-03-10 00:00:00', DATE '2020-05-15') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Scarlet Nantes 106 Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2020-06-02 00:00:00', DATE '2020-09-08') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid 106 Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2020-09-20 00:00:00', DATE '2021-01-10') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo 106 S. Cosme: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2021-03-10 00:00:00', DATE '2021-05-15') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 106 Sugarsnax Hybrid Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Danvers Half Long';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2021-06-02 00:00:00', DATE '2021-09-08') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Danvers Half Long 106 Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2021-09-20 00:00:00', DATE '2022-01-10') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo 106 S. Cosme: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2022-03-06 00:00:00', DATE '2022-05-16') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 106 Sugarsnax Hybrid Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2022-05-30 00:00:00', DATE '2022-09-05') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nelson Hybrid 106 Cenoura: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo Greleiro' and p.nome='Senhora Conceicao';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('106', v_id_planta, TIMESTAMP '2022-09-20 00:00:00', DATE '2023-01-14') RETURNING ID INTO v_id_cultura;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('104', v_id_planta, TIMESTAMP '2017-01-07 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Macieira Jonagored: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('104', v_id_planta, TIMESTAMP '2017-01-08 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('104', v_id_planta, TIMESTAMP '2017-01-08 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 40.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Macieira Royal Gala: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('104', v_id_planta, TIMESTAMP '2018-12-10 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Macieira Royal Gala: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('107', v_id_planta, TIMESTAMP '2018-01-10 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Dona Maria Videira 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final) VALUES ('107', v_id_planta, TIMESTAMP '2018-01-11 00:00:00', NULL) RETURNING ID INTO v_id_cultura;
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-11 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 107 Cardinal Videira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       dbms_output.put_line(dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
       ROLLBACK;
END;
/
DECLARE
    v_id_tipo_planta INTEGER;
    v_id_planta INTEGER;
    v_id_fator_producao INTEGER;
    v_id_componente INTEGER;
    v_id_modo_afp INTEGER;
    v_id_parcela INTEGER;
    v_id_cultura INTEGER;
    v_id_operacao INTEGER;
    v_id_produto INTEGER;
BEGIN
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2016-10-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2016-10-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2016-10-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2016-10-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-01-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-01-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao Macieira Jonagored 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao 104 Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 40.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao 104 Macieira Royal Gala: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-11-04 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-11-04 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-11-04 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-11-04 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-11-04 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-11-04 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-12-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-12-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 15.0);
INSERT INTO Modo_AFP (designacao) VALUES ('Solo');
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2017-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2017-12-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2017-12-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-01-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-01-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Poda Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 40.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-01-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-01-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-01-11 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-01-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-01-11 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 6.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Fertilizacao Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 5.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-11-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-11-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-11-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-11-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-11-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-11-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-12-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-12-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Plantacao 104 Macieira Royal Gala: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-12-16 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-12-16 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-12-16 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2018-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2018-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2018-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-01-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-01-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-01-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Poda Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-01-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-01-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-01-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 40.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.5);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 5.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Fertilizacao Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-02-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-02-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-02-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Esta Kieserit';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 7.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-11-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-11-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-11-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-11-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-11-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-11-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-12-16 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-12-16 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-12-16 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2019-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2019-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2019-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.5);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-03-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Scarlet Nantes';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-03-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-03-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.9);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Scarlet Nantes 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-03-30 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='' and p.nome='';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-03-30 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-03-30 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Biocal Composto';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 600.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in  Fertilizacao 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-04-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-04-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-04-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.2);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-05-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Scarlet Nantes';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-05-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-05-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Scarlet Nantes 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-05-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Scarlet Nantes';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-05-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-05-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1400.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Scarlet Nantes 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-06-02 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-06-02 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-06-02 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Nelson Hybrid 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-08-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-08-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-08-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Milho', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 3300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-08-28 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-08-28 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-08-28 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Nelson Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-09-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-09-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-09-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1800.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Nelson Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-09-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-09-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-09-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-10-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-10-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-10-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 36.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-10-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-10-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-10-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-11-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-11-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-11-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 70.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 50.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 7.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 40.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Poda Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-16 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-16 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-16 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2020-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2020-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2020-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-01-04 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-01-04 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-01-04 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2900.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 2.5);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-03-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-03-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-03-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.9);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Sugarsnax Hybrid 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-03-14 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-03-14 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-03-14 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, 103, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Incorporacao No Solo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-03-30 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-03-30 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-03-30 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, 101, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101 Incorporacao No Solo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-04-03 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-04-03 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-04-03 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.2);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-04-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-04-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-04-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam 101 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-05-02 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='' and p.nome='';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-05-02 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-05-02 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Epso Microtop';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
INSERT INTO Modo_AFP (designacao) VALUES ('Foliar');
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Foliar';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-05-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-05-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-05-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Sugarsnax Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-05-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-05-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-05-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1400.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Sugarsnax Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-06-02 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Danvers Half Long';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-06-02 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-06-02 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Danvers Half Long 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-07-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-07-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-07-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-07-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-07-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-07-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 400.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-08-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-08-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-08-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Milho', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 3300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 101 Milho Doce Golden Bantam: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-08-24 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-08-24 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-08-24 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 900.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-08-25 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-08-25 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-08-25 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Milho', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 3300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-08-28 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Danvers Half Long';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-08-28 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-08-28 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Danvers Half Long 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-09-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-09-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-09-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 800.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-09-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Danvers Half Long';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-09-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-09-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1800.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Danvers Half Long 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-09-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-09-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-09-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 800.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-09-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-09-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-09-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-09-23 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-09-23 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-09-23 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-10-03 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-10-03 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-10-03 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 36.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-10-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-10-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-10-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-10-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-10-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-10-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 950.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Colheita Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-03 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-03 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-03 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 750.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Colheita Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Oliveira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 210.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Oliveira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 120.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-11-28 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-11-28 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-11-28 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 70.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-12-03 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-12-03 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-12-03 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-12-16 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-12-16 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-12-16 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Poda Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2021-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2021-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2021-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-01-04 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo' and p.nome='S. Cosme';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-01-04 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-01-04 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2900.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo S. Cosme Colheita 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 3.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 3.5);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-03-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-03-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-03-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.9);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Sugarsnax Hybrid 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-03-19 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-03-19 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-03-19 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, 103, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Incorporacao No Solo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-04-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-04-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-04-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, 101, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 101 Incorporacao No Solo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-04-08 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-04-08 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-04-08 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.2);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Mas 24.C 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-04-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-04-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-04-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Milho Doce Golden Bantam 101 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-05-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-05-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-05-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 2250.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Sugarsnax Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-05-13 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='' and p.nome='';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-05-13 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-05-13 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Epso Microtop';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Foliar';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Fertilizacao 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-05-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Sugarsnax Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-05-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-05-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Sugarsnax Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-05-30 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-05-30 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-05-30 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Cenoura Nelson Hybrid 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-07-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-07-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-07-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-07-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-07-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-07-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Videira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 600.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Doce Golden Bantam';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=101 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Milho', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 3500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita 101 Milho Doce Golden Bantam: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Milho' and p.nome='Mas 24.C';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Milho', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 3300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Milho Mas 24.C 103: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 950.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-08-24 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-08-24 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-08-24 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 650.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Nelson Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-09-05 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Cenoura' and p.nome='Nelson Hybrid';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-09-05 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-09-05 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Cenoura', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1900.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Cenoura Nelson Hybrid 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-09-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-09-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-09-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 830.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-09-11 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-09-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-09-11 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 750.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-09-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-09-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-09-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 1150.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Colheita 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-09-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo Greleiro' and p.nome='Senhora Conceicao';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-09-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-09-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 0.6);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Nabo Greleiro Senhora Conceicao 106 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-10-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-10-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-10-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Sementeira: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-10-17 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-10-17 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-10-17 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 850.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Colheita Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-06 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-06 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-06 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Macieira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 900.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Colheita Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 30.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-10 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-10 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-10 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 20.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Oliveira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 300.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Oliveira', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-11-15 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo Greleiro' and p.nome='Senhora Conceicao';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-11-15 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-11-15 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo Greleiro', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 50.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Nabo Greleiro Senhora Conceicao 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-04 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Royal Gala';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-04 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-04 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 70.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Royal Gala Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-07 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Jonagored';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-07 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-07 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 90.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Macieira Jonagored Poda 104: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-11 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Galega';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-11 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 15.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Galega 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-11 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Oliveira' and p.nome='Picual';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=102 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-11 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-11 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Patentkali';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 10.0);
SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='Solo';
INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Fertilizacao Oliveira Picual 102: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-16 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-16 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-16 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 500.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo Greleiro' and p.nome='Senhora Conceicao';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo Greleiro', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 200.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Nabo Greleiro Senhora Conceicao 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2022-12-18 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2022-12-18 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2022-12-18 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 700.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Poda Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2023-01-12 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Macieira' and p.nome='Fuji';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=104 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2023-01-12 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2023-01-12 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, 60.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in 104 Poda Macieira Fuji: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2023-01-14 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Nabo Greleiro' and p.nome='Senhora Conceicao';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=106 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2023-01-14 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2023-01-14 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Produto (designacao, planta_id) VALUES ('Nabo Greleiro', v_id_planta) RETURNING id INTO v_id_produto;
INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, 250.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Colheita Nabo Greleiro Senhora Conceicao 106: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2023-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Dona Maria';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2023-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2023-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 4.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco 107 Videira Dona Maria: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2023-01-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Videira' and p.nome='Cardinal';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=107 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2023-01-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2023-01-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);
SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='Calda Bordalesa Ascenza';
INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, 5.0);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Aplicacao Fitofarmaco Videira Cardinal 107: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
BEGIN
INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '2023-03-20 00:00:00', 'sucedida') RETURNING ID INTO v_id_operacao;
SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='Tremoco' and p.nome='Amarelo';
SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id join Parcela_Agricola pa on c.parcela_id=pa.id where c.planta_id=v_id_planta and c.parcela_id=103 and ((p.tipo_plantacao='Permanente' and TIMESTAMP '2023-03-20 00:00:00' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '2023-03-20 00:00:00' between c.data_inicial and c.data_final));
INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, 103, 1.3);
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error in Tremoco Amarelo 103 Incorporacao No Solo: ' || dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
END;
COMMIT;
EXCEPTION
    WHEN OTHERS THEN
       dbms_output.put_line(dbms_utility.format_error_stack||dbms_utility.format_error_backtrace);
       ROLLBACK;
END;
/
