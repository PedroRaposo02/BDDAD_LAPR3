# US 26 - Como Gestor Agrícola, pretendo que a criação ou alteração de um registo de uma operação deva ser registado num log que indique o instante, tipo de operação e todos os dados relacionados com a operação (e.g. data da operação, parcela, etc.).

## Análise do Requisito
Nesta Us foram criados triggers para cada um dos tipos de operacao (semeadura, plantacao, colheita, monda, movimentacao do solo, rega, fertirrega, aplicacao de fator de producao no solo e na cultura) que inserm numa tabela de log comum com os dados importantes para cada operacao.

## Tabela de logs de operacao
![Table](./img/operations_log_table.png)

## Trigger de insercao de operacao

### Semeadura
![Semeadura](./img/trigger_semeadura.png)

### Plantacao
![Plantacao](./img/trigger_plantacao.png)

### Colheita
![Colheita](./img/trigger_colheita.png)

### Monda
![Monda](./img/trigger_monda.png)

### Movimentacao do solo
![Movimentacao do solo](./img/trigger_movimentacao_solo.png)

### Rega
![Rega](./img/trigger_rega.png)

### Fertirrega
![Fertirrega](./img/trigger_fertirrega.png)

### Aplicacao de fator de producao no solo
![Aplicacao de fator de producao no solo](./img/trigger_AFP_solo.png)

### Aplicacao de fator de producao na cultura
![Aplicacao de fator de producao na cultura](./img/trigger_AFP_cultura.png)


## Exemplo de log de operacao

### Insercao de uma operacao de semeadura
![Exemplo de insert de operacao de semeadura](./img/insert_semeadura.png)
![Exemplo de log de operacao de semeadura](./img/log_semeadura.png)

### Insercao de uma operacao de plantacao
![Exemplo de insert de operacao de plantacao](./img/insert_plantacao.png)
![Exemplo de log de operacao de plantacao](./img/log_plantacao.png)

### Insercao de uma operacao de colheita
![Exemplo de insert de operacao de colheita](./img/insert_colheita.png)
![Exemplo de log de operacao de colheita](./img/log_colheita.png)

### Insercao de uma operacao de monda
![Exemplo de insert de operacao de monda](./img/insert_monda.png)
![Exemplo de log de operacao de monda](./img/log_monda.png)

### Insercao de uma operacao de movimentacao do solo
![Exemplo de insert de operacao de movimentacao do solo](./img/insert_movimentacao_solo.png)
![Exemplo de log de operacao de movimentacao do solo](./img/log_movimentacao_solo.png)

### Insercao de uma operacao de rega
![Exemplo de insert de operacao de rega](./img/insert_rega.png)
![Exemplo de log de operacao de rega](./img/log_rega.png)

### Insercao de uma operacao de fertirrega
![Exemplo de insert de operacao de fertirrega](./img/insert_fertirrega.png)
![Exemplo de log de operacao de fertirrega](./img/log_fertirrega.png)

### Insercao de uma operacao de aplicacao de fator de producao no solo
![Exemplo de insert de operacao de aplicacao de fator de producao no solo](./img/insert_aplicacao_fp_solo.png)
![Exemplo de log de operacao de aplicacao de fator de producao no solo](./img/log_aplicacao_FP_solo.png)

### Insercao de uma operacao de aplicacao de fator de producao na cultura
![Exemplo de insert de operacao de aplicacao de fator de producao na cultura](./img/insert_AFP_cultura.png)
![Exemplo de log de operacao de aplicacao de fator de producao na cultura](./img/log_AFP_cultura.png)
