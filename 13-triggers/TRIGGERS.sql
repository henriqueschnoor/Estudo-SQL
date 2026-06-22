-- TRIGGER: rotina executada automaticamente após ou antes de uma ação

-- Exemplo em MySQL

CREATE TABLE log_clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    acao VARCHAR(50),
    data_log DATETIME
);

DELIMITER $$

CREATE TRIGGER trg_log_cliente_insert
AFTER INSERT ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO log_clientes (cliente_id, acao, data_log)
    VALUES (NEW.id, 'CLIENTE INSERIDO', NOW());
END $$

DELIMITER ;

INSERT INTO clientes (nome, cidade)
VALUES ('Cliente Teste', 'Limeira');

SELECT *
FROM log_clientes;

DROP TRIGGER trg_log_cliente_insert;