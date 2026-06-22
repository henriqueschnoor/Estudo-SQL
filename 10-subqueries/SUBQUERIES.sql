-- SUBQUERY: consulta dentro de outra consulta

SELECT *
FROM clientes
WHERE id IN (
    SELECT cliente_id
    FROM vendas
);

SELECT *
FROM produtos
WHERE preco > (
    SELECT AVG(preco)
    FROM produtos
);

SELECT *
FROM clientes
WHERE id NOT IN (
    SELECT cliente_id
    FROM vendas
);