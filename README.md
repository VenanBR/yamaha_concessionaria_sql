Este projeto representa o banco de dados de uma concessionária Yamaha focada na venda de peças, incluindo controle de vendedores, clientes, produtos, pedidos e pagamentos.
O objetivo é demonstrar o modelo lógico e físico desenvolvido para atender o cenário definido no minimundo.

🏪 Minimundo

A Concessionária Yamaha “MotoPeças SBC” realiza venda de peças originais Yamaha.
O negócio funciona da seguinte forma:

A loja possui vendedores, cada um com nome, telefone e um código identificador.

Os vendedores atendem clientes, que podem comprar várias peças.

As peças ficam cadastradas com nome, código, categoria, quantidade em estoque e preço.

Cada venda gera um pedido, contendo:

Cliente

Vendedor responsável

Data do pedido

Valor total

Um pedido pode ter várias peças, e uma peça pode estar em vários pedidos → relação muitos-para-muitos.

Cada pedido é associado a um pagamento, que pode ter forma de pagamento (crédito, débito, pix), valor e status.

Esse banco de dados organiza todas essas informações para facilitar consultas, relatórios e operações da loja.

🧩 Entidades criadas

As tabelas principais do sistema são:

Funcionarios – vendedores da loja

Clientes

Produtos – peças Yamaha

Pedidos

ItensPedido – peças dentro dos pedidos

Pagamentos

🛠️ Tecnologias Utilizadas

SQL (MySQL / MariaDB / SQLite – compatível com ambientes online como W3Schools e DB-Fiddle)

Diagramação baseada em DER tradicional

GitHub para versionamento e documentação

📊 Modelo Lógico

O modelo lógico contém:

Entidades

Atributos

Relacionamentos

Chaves primárias (PK) e estrangeiras (FK)

Cardinalidades

🗄️ Modelo Físico (DDL)

O modelo físico inclui os comandos CREATE TABLE de todas as tabelas, chaves e relacionamentos.

(Os comandos completos estão nos arquivos SQL do projeto.)

🎯 Objetivo do Projeto

Organizar os dados da concessionária Yamaha de forma estruturada, permitindo:

controle de estoque

registro de vendas

rastreamento dos vendedores

histórico de compras dos clientes

conferência de pagamentos

👨‍🔧 Autor

Projeto desenvolvido por Johnny, aluno de ADS na Cruzeiro do Sul EAD.
