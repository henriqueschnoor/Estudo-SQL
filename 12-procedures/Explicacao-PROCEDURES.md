# PROCEDURES

Uma `PROCEDURE` é uma rotina salva no banco de dados.

Ela pode receber parâmetros e executar comandos SQL automaticamente.

## Exemplo em MySQL

```sql
DELIMITER $$

CREATE PROCEDURE buscar_cliente_por_cidade(IN cidade_cliente VARCHAR(100))
BEGIN
    SELECT *
    FROM clientes
    WHERE cidade = cidade_cliente;
END $$

DELIMITER ;
```

## Executando a procedure

```sql
CALL buscar_cliente_por_cidade('Limeira');
```

## Removendo a procedure

```sql
DROP PROCEDURE buscar_cliente_por_cidade;
```

## Uso no suporte

No suporte, procedures podem ser usadas para automatizar consultas, gerar relatórios, corrigir dados controlados e executar rotinas já preparadas pelo time de desenvolvimento ou banco de dados.