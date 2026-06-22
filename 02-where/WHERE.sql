-- WHERE: usado para filtrar registros

SELECT *
FROM clientes
WHERE cidade = 'Sao Paulo';

SELECT *
FROM clientes
WHERE ativo = 1;

SELECT *
FROM vendas
WHERE valor > 100;

SELECT *
FROM vendas
WHERE data_venda = '2026-06-05';