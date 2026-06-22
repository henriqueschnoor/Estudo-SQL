-- HAVING: usado para filtrar resultados agrupados

SELECT cliente_id, SUM(valor) AS total_vendido
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade
HAVING COUNT(*) > 5;