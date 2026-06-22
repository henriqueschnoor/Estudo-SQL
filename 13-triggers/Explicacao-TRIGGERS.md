# TRIGGERS

Uma `TRIGGER` é uma rotina executada automaticamente pelo banco de dados quando acontece uma ação em uma tabela.

Ela pode ser executada em situações como:

- Antes de um `INSERT`
- Depois de um `INSERT`
- Antes de um `UPDATE`
- Depois de um `UPDATE`
- Antes de um `DELETE`
- Depois de um `DELETE`

## Exemplo

```sql
CREATE TRIGGER trg_log_cliente_insert
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO log_clientes (cliente_id, acao, data_log)
    VALUES (NEW.id, 'CLIENTE INSERIDO', NOW());
END;
```

Esse exemplo cria um registro de log sempre que um novo cliente é inserido.

## Uso no suporte

No suporte, triggers ajudam a entender processos automáticos do sistema, como logs, auditorias, atualização de status e histórico de alterações.

> Atenção: triggers devem ser usadas com cuidado, pois executam automaticamente e podem afetar dados importantes.