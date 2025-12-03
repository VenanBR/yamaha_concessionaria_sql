CREATE DATABASE yamaha_concessionaria;
USE yamaha_concessionaria;

CREATE TABLE peca (
    codigo_peca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    preco_venda DECIMAL(10,2) NOT NULL,
    preco_custo DECIMAL(10,2) NOT NULL,
    estoque_atual INT NOT NULL,
    estoque_minimo INT NOT NULL
);

CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(150)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE itemvenda (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT NOT NULL,
    codigo_peca INT NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (codigo_peca) REFERENCES peca(codigo_peca)
);

CREATE TABLE entrada_estoque (
    id_entrada INT PRIMARY KEY AUTO_INCREMENT,
    codigo_peca INT NOT NULL,
    id_fornecedor INT NOT NULL,
    quantidade INT NOT NULL,
    data_entrada DATE NOT NULL,
    numero_nota_fiscal VARCHAR(30),
    FOREIGN KEY (codigo_peca) REFERENCES peca(codigo_peca),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);
