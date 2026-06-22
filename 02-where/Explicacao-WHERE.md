# WHERE

O comando `WHERE` é utilizado para filtrar os registros de uma consulta.

## Exemplo

```sql
SELECT *
FROM clientes
WHERE cidade = 'Limeira';
```

Esse comando retorna apenas os clientes da cidade de Limeira.

## Outro exemplo

```sql
SELECT *
FROM vendas
WHERE valor > 100;
```

Esse comando retorna apenas vendas com valor maior que 100.

## Uso no suporte

No suporte, o `WHERE` é muito usado para localizar registros específicos, como clientes ativos, vendas por data, notas por número ou usuários por código.