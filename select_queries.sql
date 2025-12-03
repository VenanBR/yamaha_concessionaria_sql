USE yamaha_concessionaria;

-- 1. Peças com estoque abaixo do mínimo
SELECT nome, estoque_atual, estoque_minimo
FROM peca
WHERE estoque_atual < estoque_minimo;

-- 2. Listar todas as vendas com nome do cliente
SELECT v.id_venda, v.data_venda, c.nome AS cliente, v.valor_total
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente;

-- 3. Itens das vendas com nome da peça
SELECT v.id_venda, p.nome AS peca, iv.quantidade, iv.valor_unitario
FROM itemvenda iv
JOIN venda v ON iv.id_venda = v.id_venda
JOIN peca p ON iv.codigo_peca = p.codigo_peca;

-- 4. Entradas de estoque com fornecedor
SELECT e.id_entrada, p.nome AS peca, f.nome AS fornecedor, e.quantidade, e.data_entrada
FROM entrada_estoque e
JOIN peca p ON e.codigo_peca = p.codigo_peca
JOIN fornecedor f ON e.id_fornecedor = f.id_fornecedor;

-- 5. Top 2 peças mais caras
SELECT nome, preco_venda
FROM peca
ORDER BY preco_venda DESC
LIMIT 2;
