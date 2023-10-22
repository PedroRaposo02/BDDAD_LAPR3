drop database if exists Agricultura;
create database Agricultura;
use Agricultura;

create table Plantas (
    id int primary key auto_increment,
    especie varchar(50) not null,
    nome_comum varchar(50) not null,
    variedade varchar(50) not null,
    tipo_plantacao varchar(50) not null,
    data_plantacao date,
    poda varchar(70),
    floracao varchar(70),
    colheita varchar(70),
);

create or replace table Fator_Plantacao (
    id int primary key auto_increment,
    designacao varchar(50) not null,
    fabricante varchar(50) not null,
    formato varchar(50) not null,
    tipo varchar(50) not null,
    aplicacao varchar(50) not null,
    c1 varchar(50) not null,
    perc_c1 Float(5,2) not null,
    c2 varchar(50),
    perc_c2 Float(5,2),
    c3 varchar(50),
    perc_c3 Float(5,2),
    c4 varchar(50),
    perc_c4 Float(5,2),

    check (perc_c1 > 0 and perc_c1 <= 100),
    check (perc_c2 > 0 and perc_c2 <= 100),
    check (perc_c3 > 0 and perc_c3 <= 100),
    check (perc_c4 > 0 and perc_c4 <= 100),
);

create or replace table Explocaracao_Agricula (
    id int primary key auto_increment,
    tipo varchar(50) not null,
    designacao varchar(50) not null,
    area Float(5,2),
    unidade varchar(50),
);

create or replace table Parcela (
    id int primary key auto_increment,
    designacao varchar(50) not null,
);

create or replace table Culturas (
    id int primary key auto_increment,
    id_parcela int not null,
    id_planta int not null,
    data_inicial date not null,
    data_final date,
    quantidade float(5,1) not null,
    unidade varchar(50) not null,

    foreign key (id_parcela) references Parcela(id),
    foreign key (id_planta) references Plantas(id),

    check (quantidade > 0),
);

create or replace table Operacoes (
    id int primary key auto_increment,
    id_cultura int not null,
    id_fator_producao int,
    operacao varchar(50) not null,
    modo varchar(50),
    data date not null,
    quantidade float(7,1),
    unidade varchar(50),

    foreign key (id_cultura) references Culturas(id),
    foreign key (id_fator_producao) references Fator_Plantacao(id),
);

