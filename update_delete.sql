-- UPDATE 1: reajuste de preço
UPDATE peca
SET preco_venda = preco_venda * 1.05
WHERE codigo_peca = 1;

-- UPDATE 2: corrigir telefone
UPDATE cliente
SET telefone = '11988887777'
WHERE id_cliente = 1;

-- UPDATE 3: atualizar estoque após nova entrada
UPDATE peca
SET estoque_atual = estoque_atual + 10
WHERE codigo_peca = 3;

-- DELETE 1: excluir fornecedor sem entradas
DELETE FROM fornecedor
WHERE id_fornecedor NOT IN (SELECT id_fornecedor FROM entrada_estoque);

-- DELETE 2: apagar item da venda com quantidade inválida
DELETE FROM itemvenda
WHERE quantidade <= 0;

-- DELETE 3: remover venda com valor 0
DELETE FROM venda
WHERE valor_total = 0;
