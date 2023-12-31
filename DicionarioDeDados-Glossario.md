# Dicionário de Dados - Glossário

## Tabela "Plantas"

- O atributo "tipo_plantacao" tem de ser "Permanente" ou "Temporário".
- Os atributos "poda", "floracao" têm de ser a duração em meses (p.e "Janeiro" ou "Novembro a Dezembro").
- O atributo "colheita" pode ser duração em meses (p.e "Agosto a Setembro") ou então duração em dias (p.e "80 dias").
- O atributo referente a Sementeira/Plantação, do ficheiro de dados legacy, é a "data_plantacao".

## Tabela "Fator Producao"

- O atributo "formato" tem de ser igual a "Pó molhável" ou "Granulado" ou "Pó".

## Tabela "Exploracao Agricola"

- O atributo "unidade" tem de ser do formato das unidades de medida de área.

## Tabela "Culturas"

- O atributo "tipo" tem de ser "Permanente" ou "Temporária".
- O atributo "unidades" tem de ser do formato ?????.
- O atributo "operacao" deve ser do tipo "Plantação", "Sementeira", "Poda", "Incorporação no solo", "Fertilização" ou "Colheita.

## Tabela "Operacoes"

- O atributo "unidades" tem de ser do formato ?????.

---

---

## Guia de Funções e Procedures feitos no Sprint-2

- US11- PROCEDURE REGISTAR_SEMEADURA
- US12- PROCEDURE REGISTAR_MONDA
- US13- PROCEDURE REGISTAR_COLHEITA
- US14- PROCEDURE REGISTAR_APLICACAO_FATOR_PRODUCAO
- US15- PROCEDURE REGISTAR_PODA

---

- US16- FUNCTION LISTA_PRODUTOS_COLHIDOS
- US17- FUNCTION LISTA_FATORES
- US18- FUNCTION LISTA_OPERACOES
- US19- FUNCTION LISTA_FATORES
- US20- FUNCTION LISTA_TOTAL_REGA_MENSAL

## Observações

Plantas como Grand Fay, Canada e Royal Gala não estão adicionadas corretamente. O ficheiro excel possui linhas cuja variedade é "x OU y", estas mesmas não se encontram num formato correto e passam a não ser compatíveis com algumas funcionalidades.



A linha 945 do ficheiro "dadosSuplementares.sql" tem de ser eliminada. Apenas serviu para conseguir correr sem erros, sendo que foram criadas 4 tipos de plantas e 4 plantas iguais. (com respetivos ids: 15,16,17,18)

