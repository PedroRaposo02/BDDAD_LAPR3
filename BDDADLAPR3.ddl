DROP TABLE Planta CASCADE CONSTRAINTS;
DROP TABLE Operacao CASCADE CONSTRAINTS;
DROP TABLE Parcela_Agricola CASCADE CONSTRAINTS;
DROP TABLE Cultura CASCADE CONSTRAINTS;
DROP TABLE Fator_Producao CASCADE CONSTRAINTS;
DROP TABLE Produto CASCADE CONSTRAINTS;
DROP TABLE Componente CASCADE CONSTRAINTS;
CREATE TABLE Planta (
  id             number(10) GENERATED AS IDENTITY, 
  especie        varchar2(50) NOT NULL, 
  nome_comum     varchar2(50) NOT NULL, 
  variedade      varchar2(50) NOT NULL, 
  tipo_plantacao varchar2(50) NOT NULL, 
  data_plantacao varchar2(50), 
  poda           varchar2(70), 
  floracao       varchar2(70), 
  colheita       varchar2(70), 
  PRIMARY KEY (id), 
  CONSTRAINT NomeVariedadeConstraint 
    UNIQUE (nome_comum, variedade));
CREATE TABLE Operacao (
  id                number(10) GENERATED AS IDENTITY, 
  data              timestamp(0) NOT NULL, 
  tipo_operacao     varchar2(50) NOT NULL, 
  modo              varchar2(50), 
  quantidade        float(5), 
  unidades          varchar2(50), 
  cultura_id        number(10) NOT NULL, 
  fator_producao_id number(10), 
  PRIMARY KEY (id), 
  CONSTRAINT UniqueConstraintOperacoes 
    UNIQUE (data, cultura_id, tipo_operacao));
CREATE TABLE Parcela_Agricola (
  id         number(10) NOT NULL, 
  designacao varchar2(50) NOT NULL UNIQUE, 
  area       float(5), 
  unidade    varchar2(50), 
  PRIMARY KEY (id));
CREATE TABLE Cultura (
  id           number(10) GENERATED AS IDENTITY, 
  data_inicial timestamp(0) NOT NULL, 
  data_final   timestamp(0), 
  quantidade   float(5) NOT NULL, 
  unidades     varchar2(50) NOT NULL, 
  parcela_id   number(10) NOT NULL, 
  planta_id    number(10) NOT NULL, 
  PRIMARY KEY (id), 
  CONSTRAINT UnqiueIdentifier 
    UNIQUE (data_inicial, parcela_id, planta_id));
CREATE TABLE Fator_Producao (
  id         number(10) GENERATED AS IDENTITY, 
  designacao varchar2(50) NOT NULL UNIQUE, 
  fabricante varchar2(50) NOT NULL, 
  formato    varchar2(50) NOT NULL, 
  tipo       varchar2(50) NOT NULL, 
  aplicacao  varchar2(50) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Produto (
  id          number(10) GENERATED AS IDENTITY, 
  nome        varchar2(50) NOT NULL, 
  planta_id   number(10) NOT NULL, 
  operacao_id number(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Componente (
  fator_producao_id number(10) NOT NULL, 
  componente        varchar2(20), 
  percentagem       float(10));
ALTER TABLE Cultura ADD CONSTRAINT FKCultura385034 FOREIGN KEY (planta_id) REFERENCES Planta (id);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao610228 FOREIGN KEY (fator_producao_id) REFERENCES Fator_Producao (id);
ALTER TABLE Cultura ADD CONSTRAINT FKCultura793187 FOREIGN KEY (parcela_id) REFERENCES Parcela_Agricola (id);
ALTER TABLE Produto ADD CONSTRAINT FKProduto637620 FOREIGN KEY (planta_id) REFERENCES Planta (id);
ALTER TABLE Componente ADD CONSTRAINT FKComponente336563 FOREIGN KEY (fator_producao_id) REFERENCES Fator_Producao (id);
ALTER TABLE Produto ADD CONSTRAINT FKProduto864440 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Operacao ADD CONSTRAINT FKOperacao507025 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
