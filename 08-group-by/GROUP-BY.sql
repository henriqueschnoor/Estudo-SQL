-- GROUP BY: usado para agrupar registros

SELECT cliente_id, COUNT(*) AS total_vendas
FROM vendas
GROUP BY cliente_id;

SELECT cliente_id, SUM(valor) AS total_vendido
FROM vendas
GROUP BY cliente_id;

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;