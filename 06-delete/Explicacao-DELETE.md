# DELETE

O comando `DELETE` é utilizado para remover registros de uma tabela.

## Exemplo

```sql
DELETE FROM clientes
WHERE id = 1;
```

Esse comando remove o cliente com `id = 1`.

## Atenção

Nunca execute um `DELETE` sem `WHERE`, pois isso pode apagar todos os registros da tabela.

## Exemplo perigoso

```sql
DELETE FROM clientes;
```

Esse comando apagaria todos os clientes.

## Uso no suporte

No suporte, o `DELETE` pode ser usado para remover registros de teste, dados duplicados ou informações criadas incorretamente.

> Em produção, deve ser usado somente com autorização e, de preferência, após backup.