-- DELETE: usado para remover registros

DELETE FROM clientes
WHERE id = 1;

DELETE FROM produtos
WHERE id = 10;

DELETE FROM usuarios
WHERE ativo = 0
AND id = 5;