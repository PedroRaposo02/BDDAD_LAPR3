DROP TABLE Plantas CASCADE CONSTRAINTS;
DROP TABLE Operacoes CASCADE CONSTRAINTS;
DROP TABLE ExploracaoAgricola CASCADE CONSTRAINTS;
DROP TABLE Culturas CASCADE CONSTRAINTS;
DROP TABLE FatorProducao CASCADE CONSTRAINTS;
CREATE TABLE Plantas (id number(10) GENERATED AS IDENTITY, especie varchar2(50) NOT NULL, nome_comum varchar2(50) NOT NULL, variedade varchar2(50) NOT NULL, tipo_plantacao varchar2(50) NOT NULL, data_plantacao varchar2(50), poda varchar2(70), floracao varchar2(70), colheita varchar2(70), PRIMARY KEY (id), CONSTRAINT NomeVariedadeConstraint UNIQUE (nome_comum, variedade));
CREATE TABLE Operacoes (id number(10) GENERATED AS IDENTITY, operacao varchar2(50) NOT NULL, modo varchar2(50), data timestamp(0) NOT NULL, quantidade float(5), unidades varchar2(50), fator_producao_id number(10), exploracao_agricula_id number(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE ExploracaoAgricola (id number(10) NOT NULL, tipo varchar2(50) NOT NULL, designacao varchar2(50) NOT NULL, area float(5), unidade varchar2(50), PRIMARY KEY (id));
CREATE TABLE Culturas (id number(10) GENERATED AS IDENTITY, data_inicial timestamp(0) NOT NULL, data_final timestamp(0), quantidade float(5) NOT NULL, unidades varchar2(50) NOT NULL, exploracao_agricula_id number(10) NOT NULL, planta_id number(10) NOT NULL, PRIMARY KEY (id));
CREATE TABLE FatorProducao (id number(10) GENERATED AS IDENTITY, designacao varchar2(50) NOT NULL UNIQUE, fabricante varchar2(50) NOT NULL, formato varchar2(50) NOT NULL, tipo varchar2(50) NOT NULL, aplicacao varchar2(50) NOT NULL, c1 varchar2(50) NOT NULL, perc_c1 float(5) NOT NULL, c2 varchar2(50), perc_c2 float(5), c3 varchar2(50), perc_c3 float(5), c4 varchar2(50), perc_c4 float(5), PRIMARY KEY (id));
ALTER TABLE Culturas ADD CONSTRAINT FKCulturas245103 FOREIGN KEY (planta_id) REFERENCES Plantas (id);
ALTER TABLE Operacoes ADD CONSTRAINT FKOperacoes50339 FOREIGN KEY (fator_producao_id) REFERENCES FatorProducao (id);
ALTER TABLE Culturas ADD CONSTRAINT FKCulturas621923 FOREIGN KEY (exploracao_agricula_id) REFERENCES ExploracaoAgricola (id);
ALTER TABLE Operacoes ADD CONSTRAINT FKOperacoes224764 FOREIGN KEY (exploracao_agricula_id) REFERENCES ExploracaoAgricola (id);
