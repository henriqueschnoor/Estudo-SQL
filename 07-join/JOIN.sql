-- JOIN: usado para relacionar dados entre tabelas

SELECT c.nome, v.valor
FROM clientes c
INNER JOIN vendas v
ON c.id = v.cliente_id;

SELECT c.nome, v.valor
FROM clientes c
LEFT JOIN vendas v
ON c.id = v.cliente_id;

SELECT c.nome, v.valor
FROM clientes c
RIGHT JOIN vendas v
ON c.id = v.cliente_id;