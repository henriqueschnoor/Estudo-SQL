# GROUP BY

O `GROUP BY` é utilizado para agrupar registros que possuem valores iguais em uma ou mais colunas.

## Exemplo contando vendas por cliente

```sql
SELECT cliente_id, COUNT(*) AS total_vendas
FROM vendas
GROUP BY cliente_id;
```

Esse comando mostra quantas vendas cada cliente possui.

## Exemplo somando vendas por cliente

```sql
SELECT cliente_id, SUM(valor) AS total_vendido
FROM vendas
GROUP BY cliente_id;
```

Esse comando mostra o total vendido para cada cliente.

## Uso no suporte

No suporte, o `GROUP BY` é usado para contar registros, somar vendas, identificar duplicidades e analisar dados agrupados por cliente, produto, cidade, data ou status.