# SUBQUERIES

Subquery é uma consulta SQL dentro de outra consulta.

## Exemplo com IN

```sql
SELECT *
FROM clientes
WHERE id IN (
    SELECT cliente_id
    FROM vendas
);
```

Esse comando retorna clientes que possuem vendas.

## Exemplo com média

```sql
SELECT *
FROM produtos
WHERE preco > (
    SELECT AVG(preco)
    FROM produtos
);
```

Esse comando retorna produtos com preço acima da média.

## Uso no suporte

No suporte, subqueries ajudam a localizar registros relacionados, encontrar dados que existem em uma tabela e não existem em outra, além de comparar valores com médias, totais e quantidades.