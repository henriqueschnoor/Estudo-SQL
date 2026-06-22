# UPDATE

O comando `UPDATE` é utilizado para alterar registros existentes em uma tabela.

## Exemplo

```sql
UPDATE clientes
SET telefone = '19888888888'
WHERE id = 1;
```

Esse comando altera o telefone do cliente com `id = 1`.

## Atenção

Nunca execute um `UPDATE` sem `WHERE`, pois isso pode alterar todos os registros da tabela.

## Exemplo perigoso

```sql
UPDATE clientes
SET cidade = 'Limeira';
```

Esse comando alteraria a cidade de todos os clientes.

## Uso no suporte

No suporte, o `UPDATE` pode ser usado para corrigir dados, ajustar status, alterar informações incorretas ou resolver inconsistências no sistema.