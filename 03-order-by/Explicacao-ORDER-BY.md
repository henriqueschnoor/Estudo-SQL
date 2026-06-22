# ORDER BY

O comando `ORDER BY` é utilizado para ordenar os resultados de uma consulta.

## Ordem crescente

```sql
SELECT *
FROM clientes
ORDER BY nome ASC;
```

Retorna os clientes em ordem alfabética.

## Ordem decrescente

```sql
SELECT *
FROM vendas
ORDER BY data_venda DESC;
```

Retorna as vendas mais recentes primeiro.

## Uso no suporte

No suporte, o `ORDER BY` ajuda a organizar consultas por data, nome, código, valor ou status.