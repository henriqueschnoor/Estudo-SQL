-- VIEW: cria uma consulta salva no banco

CREATE VIEW vw_vendas_clientes AS
SELECT 
    c.nome AS cliente,
    v.valor,
    v.data_venda
FROM clientes c
INNER JOIN vendas v
ON c.id = v.cliente_id;

SELECT *
FROM vw_vendas_clientes;

DROP VIEW vw_vendas_clientes;