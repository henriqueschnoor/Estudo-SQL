# 📚 SQL para Suporte de Sistemas

## Sobre

Este repositório contém os principais comandos SQL utilizados no dia a dia de profissionais de Suporte Técnico, Suporte de Sistemas, ERP, Banco de Dados e Analistas de Aplicação.

O objetivo é servir como material de consulta rápida e revisão dos comandos mais utilizados em ambientes corporativos.

---

# 🔎 SELECT

O comando `SELECT` é utilizado para consultar dados em uma tabela.

### Exemplo

```sql
SELECT * FROM clientes;
```

Retorna todos os registros da tabela.

```sql
SELECT nome, telefone FROM clientes;
```

Retorna apenas as colunas especificadas.

---

# 🎯 WHERE

Utilizado para filtrar registros.

### Exemplo

```sql
SELECT *
FROM clientes
WHERE cidade = 'Limeira';
```

Retorna apenas clientes da cidade de Limeira.

---

# 📋 ORDER BY

Ordena os resultados de uma consulta.

### Crescente

```sql
SELECT *
FROM clientes
ORDER BY nome ASC;
```

### Decrescente

```sql
SELECT *
FROM clientes
ORDER BY nome DESC;
```

---

# 🔍 DISTINCT

Remove valores duplicados.

### Exemplo

```sql
SELECT DISTINCT cidade
FROM clientes;
```

Retorna cada cidade apenas uma vez.

---

# ➕ AND

Exige que todas as condições sejam verdadeiras.

```sql
SELECT *
FROM clientes
WHERE cidade = 'Limeira'
AND ativo = 1;
```

---

# ➖ OR

Retorna registros que atendam pelo menos uma condição.

```sql
SELECT *
FROM clientes
WHERE cidade = 'Limeira'
OR cidade = 'Campinas';
```

---

# 🚫 NOT

Inverte uma condição.

```sql
SELECT *
FROM clientes
WHERE NOT cidade = 'Limeira';
```

---

# 🔤 LIKE

Pesquisa padrões de texto.

### Contém

```sql
SELECT *
FROM clientes
WHERE nome LIKE '%Henrique%';
```

### Começa com

```sql
SELECT *
FROM clientes
WHERE nome LIKE 'Hen%';
```

### Termina com

```sql
SELECT *
FROM clientes
WHERE nome LIKE '%Silva';
```

---

# 📌 IN

Pesquisa vários valores ao mesmo tempo.

```sql
SELECT *
FROM clientes
WHERE cidade IN ('Limeira','Campinas','Americana');
```

---

# 📅 BETWEEN

Pesquisa registros dentro de um intervalo.

```sql
SELECT *
FROM vendas
WHERE data_venda BETWEEN '2026-06-01'
AND '2026-06-30';
```

---

# ❓ IS NULL

Busca campos vazios.

```sql
SELECT *
FROM clientes
WHERE telefone IS NULL;
```

---

# ✅ IS NOT NULL

Busca campos preenchidos.

```sql
SELECT *
FROM clientes
WHERE telefone IS NOT NULL;
```

---

# 📊 COUNT

Conta registros.

```sql
SELECT COUNT(*) AS total
FROM clientes;
```

---

# 💰 SUM

Realiza somatórios.

```sql
SELECT SUM(valor)
FROM vendas;
```

---

# 📈 AVG

Calcula média.

```sql
SELECT AVG(valor)
FROM vendas;
```

---

# ⬇️ MIN

Retorna o menor valor.

```sql
SELECT MIN(valor)
FROM vendas;
```

---

# ⬆️ MAX

Retorna o maior valor.

```sql
SELECT MAX(valor)
FROM vendas;
```

---

# 📦 GROUP BY

Agrupa registros.

```sql
SELECT cliente_id,
SUM(valor)
FROM vendas
GROUP BY cliente_id;
```

---

# 🎯 HAVING

Filtra resultados agrupados.

```sql
SELECT cliente_id,
SUM(valor)
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 1000;
```

---

# 🔗 INNER JOIN

Retorna apenas registros relacionados entre tabelas.

```sql
SELECT c.nome,
v.valor
FROM clientes c
INNER JOIN vendas v
ON c.id = v.cliente_id;
```

---

# 🔗 LEFT JOIN

Retorna todos os registros da tabela da esquerda.

```sql
SELECT c.nome,
v.valor
FROM clientes c
LEFT JOIN vendas v
ON c.id = v.cliente_id;
```

---

# 🔗 RIGHT JOIN

Retorna todos os registros da tabela da direita.

```sql
SELECT c.nome,
v.valor
FROM clientes c
RIGHT JOIN vendas v
ON c.id = v.cliente_id;
```

---

# ➕ INSERT

Insere novos registros.

```sql
INSERT INTO clientes
(nome,cidade)
VALUES
('Henrique','Limeira');
```

---

# ✏️ UPDATE

Atualiza registros existentes.

```sql
UPDATE clientes
SET cidade = 'Campinas'
WHERE id = 1;
```

---

# 🗑️ DELETE

Remove registros.

```sql
DELETE FROM clientes
WHERE id = 1;
```

---

# 📄 SUBQUERY

Consulta dentro de outra consulta.

```sql
SELECT *
FROM clientes
WHERE id IN (
    SELECT cliente_id
    FROM vendas
);
```

---

# 🔀 CASE

Cria condições dentro da consulta.

```sql
SELECT nome,
CASE
    WHEN ativo = 1 THEN 'Ativo'
    ELSE 'Inativo'
END AS status
FROM clientes;
```

---

# 🚀 Consultas Comuns para Suporte

### Buscar Cliente

```sql
SELECT *
FROM cliente
WHERE nome LIKE '%MERCADO%';
```

### Buscar Nota Fiscal

```sql
SELECT *
FROM notafiscal
WHERE numero = 12345;
```

### Buscar Vendas por Período

```sql
SELECT *
FROM venda
WHERE datahora BETWEEN '2026-06-01'
AND '2026-06-30';
```

### Buscar Rejeições NFC-e

```sql
SELECT *
FROM vendanfce
WHERE motivorejeicao IS NOT NULL;
```

### Buscar Registros Duplicados

```sql
SELECT cpf,
COUNT(*)
FROM clientes
GROUP BY cpf
HAVING COUNT(*) > 1;
```

---

# 🧠 Ordem Correta de Escrita de uma Query

```sql
SELECT
FROM
JOIN
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
```