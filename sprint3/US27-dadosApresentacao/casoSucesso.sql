/*
** USBD27 Como Gestor Agrícola, pretendo que não seja possível alterar ou apagar os logs.

<Caso de sucesso>
Tentar apagar o último registo da tabela de logs
Deve dar erro por operação ilegal/não permitida.

Tentar alterar texto do último registo da tabela de logs 
Deve dar erro por operação ilegal/não permitida.
<\Caso de sucesso>
*/

---test the user story please

DELETE FROM OPERATIONS_LOG WHERE LOG_ID = (SELECT MAX(LOG_ID) FROM OPERATIONS_LOG);


