# HAVING

O `HAVING` é utilizado para filtrar resultados após o uso do `GROUP BY`.

## Exemplo

```sql
SELECT cliente_id, SUM(valor) AS total_vendido
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;
```

Esse comando mostra apenas clientes que possuem total vendido maior que 1000.

## Diferença entre WHERE e HAVING

O `WHERE` filtra antes de agrupar.

O `HAVING` filtra depois de agrupar.

## Uso no suporte

No suporte, o `HAVING` é usado para encontrar clientes com muitas vendas, produtos repetidos, registros duplicados e totais acima de determinado valor.