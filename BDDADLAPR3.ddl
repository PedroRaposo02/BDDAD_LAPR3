DROP TABLE Planta CASCADE CONSTRAINTS;
DROP TABLE Operacao CASCADE CONSTRAINTS;
DROP TABLE Parcela_Agricola CASCADE CONSTRAINTS;
DROP TABLE Cultura CASCADE CONSTRAINTS;
DROP TABLE Fator_Producao CASCADE CONSTRAINTS;
DROP TABLE Produto CASCADE CONSTRAINTS;
DROP TABLE Componente CASCADE CONSTRAINTS;
DROP TABLE Tipo_Planta CASCADE CONSTRAINTS;
DROP TABLE Semeadura CASCADE CONSTRAINTS;
DROP TABLE Monda CASCADE CONSTRAINTS;
DROP TABLE Plantacao CASCADE CONSTRAINTS;
DROP TABLE Rega CASCADE CONSTRAINTS;
DROP TABLE Colheita CASCADE CONSTRAINTS;
DROP TABLE Movimentacao_Solo CASCADE CONSTRAINTS;
DROP TABLE Aplicacao_FP_Solo CASCADE CONSTRAINTS;
DROP TABLE Aplicacao_FP CASCADE CONSTRAINTS;
DROP TABLE Aplicacao_FP_Cultura CASCADE CONSTRAINTS;
DROP TABLE Modo_AFP CASCADE CONSTRAINTS;
DROP TABLE FP_Aplicados CASCADE CONSTRAINTS;
DROP TABLE Setor CASCADE CONSTRAINTS;
DROP TABLE Fertirrega CASCADE CONSTRAINTS;
DROP TABLE Receita_fertirrega CASCADE CONSTRAINTS;
DROP TABLE FP_Receita CASCADE CONSTRAINTS;
CREATE TABLE Planta (
  id             number(10) GENERATED AS IDENTITY, 
  nome           varchar2(200) NOT NULL, 
  tipo_planta_id number(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Operacao (
  id   number(10) GENERATED AS IDENTITY, 
  data timestamp(0) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Parcela_Agricola (
  id         number(10) NOT NULL, 
  designacao varchar2(50) NOT NULL UNIQUE, 
  area       float(5) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Cultura (
  id           number(10) GENERATED AS IDENTITY, 
  data_inicial timestamp(0) NOT NULL, 
  data_final   timestamp(0), 
  area         float(10) NOT NULL, 
  parcela_id   number(10) NOT NULL, 
  planta_id    number(10) NOT NULL, 
  setor_id     number(10) NOT NULL, 
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
  id         number(10) GENERATED AS IDENTITY, 
  designacao varchar2(200) NOT NULL, 
  planta_id  number(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Componente (
  fator_producao_id number(10) NOT NULL, 
  componente        varchar2(20) NOT NULL, 
  percentagem       float(10) NOT NULL);
CREATE TABLE Tipo_Planta (
  id         number(10) GENERATED AS IDENTITY, 
  designacao varchar2(100) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Semeadura (
  operacao_id        number(10) NOT NULL, 
  quantidade_semente float(10) NOT NULL, 
  cultura_id         number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Monda (
  operacao_id number(10) NOT NULL, 
  area        float(10) NOT NULL, 
  cultura_id  number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Plantacao (
  operacao_id     number(10) NOT NULL, 
  num_plantas     number(10) NOT NULL, 
  compasso        number(10) NOT NULL, 
  distancia_filas number(10) NOT NULL, 
  cultura_id      number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Rega (
  operacao_id number(10) NOT NULL, 
  duracao     number(10) NOT NULL, 
  setor_id    number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Colheita (
  operacao_id number(10) NOT NULL, 
  quantidade  number(10) NOT NULL, 
  produto_id  number(10) NOT NULL, 
  cultura_id  number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Movimentacao_Solo (
  operacao_id number(10) NOT NULL, 
  area        float(10) NOT NULL, 
  parcela_id  number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Aplicacao_FP_Solo (
  operacao_id number(10) NOT NULL, 
  parcela_id  number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Aplicacao_FP (
  operacao_id number(10) NOT NULL, 
  area        float(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Aplicacao_FP_Cultura (
  operacao_id number(10) NOT NULL, 
  cultura_id  number(10) NOT NULL, 
  modo_afp_id number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Modo_AFP (
  id         number(10) GENERATED AS IDENTITY, 
  designacao varchar2(200) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE FP_Aplicados (
  operacao_id number(10) NOT NULL, 
  fp_id       number(10) NOT NULL, 
  quantidade  number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Setor (
  id            number(10) GENERATED AS IDENTITY, 
  data_inicial  timestamp(0) NOT NULL, 
  data_final    timestamp(0), 
  caudal_maximo float(10) NOT NULL, 
  num_setor     number(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Fertirrega (
  operacao_id number(10) NOT NULL, 
  receita     number(10) NOT NULL, 
  PRIMARY KEY (operacao_id));
CREATE TABLE Receita_fertirrega (
  id          number(10) GENERATED AS IDENTITY, 
  num_receita number(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE FP_Receita (
  receita_id number(10) NOT NULL, 
  fp_id      number(10) NOT NULL, 
  quantidade number(10) NOT NULL);
ALTER TABLE Cultura ADD CONSTRAINT FKCultura793187 FOREIGN KEY (parcela_id) REFERENCES Parcela_Agricola (id);
ALTER TABLE Produto ADD CONSTRAINT FKProduto637620 FOREIGN KEY (planta_id) REFERENCES Planta (id);
ALTER TABLE Componente ADD CONSTRAINT FKComponente336563 FOREIGN KEY (fator_producao_id) REFERENCES Fator_Producao (id);
ALTER TABLE Cultura ADD CONSTRAINT FKCultura385034 FOREIGN KEY (planta_id) REFERENCES Planta (id);
ALTER TABLE Planta ADD CONSTRAINT FKPlanta586474 FOREIGN KEY (tipo_planta_id) REFERENCES Tipo_Planta (id);
ALTER TABLE Semeadura ADD CONSTRAINT FKSemeadura878528 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Semeadura ADD CONSTRAINT FKSemeadura342739 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
ALTER TABLE Monda ADD CONSTRAINT FKMonda789751 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Monda ADD CONSTRAINT FKMonda960570 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
ALTER TABLE Plantacao ADD CONSTRAINT FKPlantacao963769 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Plantacao ADD CONSTRAINT FKPlantacao786552 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
ALTER TABLE Rega ADD CONSTRAINT FKRega773435 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Colheita ADD CONSTRAINT FKColheita249376 FOREIGN KEY (produto_id) REFERENCES Produto (id);
ALTER TABLE Colheita ADD CONSTRAINT FKColheita410021 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
ALTER TABLE Colheita ADD CONSTRAINT FKColheita340301 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Movimentacao_Solo ADD CONSTRAINT FKMovimentac188490 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Movimentacao_Solo ADD CONSTRAINT FKMovimentac168301 FOREIGN KEY (parcela_id) REFERENCES Parcela_Agricola (id);
ALTER TABLE Aplicacao_FP ADD CONSTRAINT FKAplicacao_401044 FOREIGN KEY (operacao_id) REFERENCES Operacao (id);
ALTER TABLE Aplicacao_FP_Solo ADD CONSTRAINT FKAplicacao_381515 FOREIGN KEY (operacao_id) REFERENCES Aplicacao_FP (operacao_id);
ALTER TABLE Aplicacao_FP_Solo ADD CONSTRAINT FKAplicacao_847241 FOREIGN KEY (parcela_id) REFERENCES Parcela_Agricola (id);
ALTER TABLE Aplicacao_FP_Cultura ADD CONSTRAINT FKAplicacao_932937 FOREIGN KEY (cultura_id) REFERENCES Cultura (id);
ALTER TABLE Aplicacao_FP_Cultura ADD CONSTRAINT FKAplicacao_599743 FOREIGN KEY (operacao_id) REFERENCES Aplicacao_FP (operacao_id);
ALTER TABLE Aplicacao_FP_Cultura ADD CONSTRAINT FKAplicacao_324158 FOREIGN KEY (modo_afp_id) REFERENCES Modo_AFP (id);
ALTER TABLE FP_Aplicados ADD CONSTRAINT FKFP_Aplicad286628 FOREIGN KEY (operacao_id) REFERENCES Aplicacao_FP (operacao_id);
ALTER TABLE FP_Aplicados ADD CONSTRAINT FKFP_Aplicad389859 FOREIGN KEY (fp_id) REFERENCES Fator_Producao (id);
ALTER TABLE Rega ADD CONSTRAINT FKRega591594 FOREIGN KEY (setor_id) REFERENCES Setor (id);
ALTER TABLE FP_Receita ADD CONSTRAINT FKFP_Receita91311 FOREIGN KEY (receita_id) REFERENCES Receita_fertirrega (id);
ALTER TABLE FP_Receita ADD CONSTRAINT FKFP_Receita922460 FOREIGN KEY (fp_id) REFERENCES Fator_Producao (id);
ALTER TABLE Fertirrega ADD CONSTRAINT FKFertirrega159558 FOREIGN KEY (receita) REFERENCES Receita_fertirrega (id);
ALTER TABLE Fertirrega ADD CONSTRAINT FKFertirrega373004 FOREIGN KEY (operacao_id) REFERENCES Rega (operacao_id);
ALTER TABLE Cultura ADD CONSTRAINT FKCultura206816 FOREIGN KEY (setor_id) REFERENCES Setor (id);
