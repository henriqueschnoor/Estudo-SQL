-- SELECT: usado para consultar dados em uma tabela

SELECT * 
FROM clientes;

SELECT nome, telefone
FROM clientes;

SELECT nome, cidade
FROM clientes
WHERE cidade = 'Sao Paulo';

SELECT *
FROM clientes
ORDER BY nome ASC;