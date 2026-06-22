# JOIN

O `JOIN` é utilizado para relacionar dados entre duas ou mais tabelas.

## INNER JOIN

Retorna apenas os registros que possuem relacionamento nas duas tabelas.

```sql
SELECT c.nome, v.valor
FROM clientes c
INNER JOIN vendas v
ON c.id = v.cliente_id;
```

## LEFT JOIN

Retorna todos os registros da tabela da esquerda, mesmo que não tenham relação com a tabela da direita.

```sql
SELECT c.nome, v.valor
FROM clientes c
LEFT JOIN vendas v
ON c.id = v.cliente_id;
```

## RIGHT JOIN

Retorna todos os registros da tabela da direita, mesmo que não tenham relação com a tabela da esquerda.

```sql
SELECT c.nome, v.valor
FROM clientes c
RIGHT JOIN vendas v
ON c.id = v.cliente_id;
```

## Uso no suporte

No suporte, o `JOIN` é muito usado para consultar vendas com clientes, notas fiscais com itens, pedidos com produtos e usuários com permissões.