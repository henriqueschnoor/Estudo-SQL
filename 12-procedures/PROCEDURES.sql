-- PROCEDURE: rotina salva no banco de dados

-- Exemplo em MySQL

DELIMITER $$

CREATE PROCEDURE buscar_cliente_por_cidade(IN cidade_cliente VARCHAR(100))
BEGIN
    SELECT *
    FROM clientes
    WHERE cidade = cidade_cliente;
END $$

DELIMITER ;

CALL buscar_cliente_por_cidade('Limeira');

DROP PROCEDURE buscar_cliente_por_cidade;