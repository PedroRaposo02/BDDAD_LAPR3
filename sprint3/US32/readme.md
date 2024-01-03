# US 32 - Como Gestor Agrícola, pretendo registar uma operação de rega, incluindo a componente de fertirrega (se aplicável).

## Análise do Requisito
Nesta US foram criados dois procedures para registar uma operacao de rega, um para rega simples e outro para fertirrega. Os dois procedures têm o mesmo nome e recebem os mesmos parametros, mas o procedure de fertirrega tem um parametro adicional para número da receita.

## Código

### Package com os procedures
![Package](./img/package.png)

### Procedure de rega
![Procedure de rega](./img/procedure_rega.png)
![Exemplo de rega](./img/exemplo_teste_rega.png)
![Exemplo de rega](./img/exemplo_query_rega.png)

### Procedure de fertirrega
![Procedure de fertirrega](./img/procedure_fertirrega_1.png)
![Procedure de fertirrega](./img/procedure_fertirrega_2.png)

## Testes
### Caso de Sucesso
![Exemplo de rega](./img/caso_sucesso.png)
![Exemplo de rega](./img/query_caso_sucesso.png)
![Exemplo de rega](./img/rega_caso_sucesso.png)
![Exemplo de rega](./img/APF1_caso_sucesso.png)
![Exemplo de rega](./img/APF2_caso_sucesso.png)

### Caso de Insucesso
![Exemplo de rega](./img/caso_insucesso.png)
![Exemplo de rega](./img/resultado_caso_insucesso.png)