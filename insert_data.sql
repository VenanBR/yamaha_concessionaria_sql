USE yamaha_concessionaria;

INSERT INTO fornecedor (nome, cnpj, telefone, email) VALUES
('MotoParts Distribuidora', '12.345.678/0001-90', '1133221100', 'contato@motoparts.com'),
('Yamaha Peças Brasil', '98.765.432/0001-40', '1144556677', 'vendas@yamahabr.com');

INSERT INTO peca (nome, descricao, preco_venda, preco_custo, estoque_atual, estoque_minimo) VALUES
('Pastilha de Freio Dianteira', 'Pastilha original Yamaha', 89.90, 55.00, 50, 10),
('Óleo Yamalube 4T', 'Óleo lubrificante para motos Yamaha', 39.90, 22.00, 120, 20),
('Filtro de Ar', 'Filtro padrão Yamaha', 55.00, 30.00, 30, 5);

INSERT INTO cliente (nome, cpf, telefone) VALUES
('João Silva', '123.456.789-00', '11999990000'),
('Carla Andrade', '987.654.321-00', '11911112222');

INSERT INTO venda (data_venda, valor_total, id_cliente) VALUES
('2025-11-25', 169.70, 1),
('2025-11-26', 94.90, 2);

INSERT INTO itemvenda (id_venda, codigo_peca, quantidade, valor_unitario) VALUES
(1, 1, 1, 89.90),
(1, 2, 2, 39.90),
(2, 3, 1, 55.00);

INSERT INTO entrada_estoque (codigo_peca, id_fornecedor, quantidade, data_entrada, numero_nota_fiscal) VALUES
(1, 1, 20, '2025-11-10', 'NF12345'),
(2, 2, 50, '2025-11-12', 'NF98765'),
(3, 1, 15, '2025-11-15', 'NF54321');
