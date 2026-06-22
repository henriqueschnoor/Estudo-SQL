# VIEWS

Uma `VIEW` é uma consulta salva no banco de dados.

Ela funciona como uma tabela virtual baseada em um `SELECT`.

## Criando uma VIEW

```sql
CREATE VIEW vw_vendas_clientes AS
SELECT 
    c.nome AS cliente,
    v.valor,
    v.data_venda
FROM clientes c
INNER JOIN vendas v
ON c.id = v.cliente_id;
```

## Consultando uma VIEW

```sql
SELECT *
FROM vw_vendas_clientes;
```

## Removendo uma VIEW

```sql
DROP VIEW vw_vendas_clientes;
```

## Uso no suporte

No suporte, `VIEW` pode ser usada para facilitar consultas repetitivas, relatórios, conferências e análises de dados sem precisar escrever a consulta completa toda vez.