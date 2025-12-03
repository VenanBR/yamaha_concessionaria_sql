# Sistema de Gestão de Peças – Concessionária Yamaha

## Descrição do Projeto
Este repositório contém os scripts SQL desenvolvidos para o projeto da disciplina **“Criação e Manipulação de Dados com SQL em Projeto Real”**.  
O sistema representa a rotina de uma concessionária Yamaha que trabalha com venda de peças, cadastro de clientes, fornecedores, controle de estoque e registro de vendas.

O projeto inclui todos os scripts exigidos pela atividade:  
- Criação das tabelas (DER completo)  
- Inserção de dados reais  
- Consultas SELECT com filtros e JOINs  
- Comandos UPDATE  
- Comandos DELETE  
- README documentado  
- Estrutura organizada em repositório público

---

## Minimundo
A concessionária vende peças originais Yamaha e precisa registrar:

- Peças, seus preços e controle de estoque.  
- Fornecedores responsáveis pelas entregas.  
- Entradas de estoque de cada peça.  
- Clientes.  
- Vendas realizadas.  
- Itens que compõem cada venda, relacionando peça, quantidade e valor unitário.

Todas as regras de relacionamento seguem o DER fornecido.

---

## DER – Entidades e Atributos

### **1. PEÇA**
- codigo_peca (PK)  
- nome  
- descricao  
- preco_venda  
- preco_custo  
- estoque_atual  
- estoque_minimo

### **2. FORNECEDOR**
- id_fornecedor (PK)  
- nome  
- cnpj  
- telefone  
- email

### **3. CLIENTE**
- id_cliente (PK)  
- nome  
- cpf  
- telefone

### **4. VENDA**
- id_venda (PK)  
- data_venda  
- valor_total  
- id_cliente (FK → CLIENTE)

### **5. ITEMVENDA**
- id_item (PK)  
- id_venda (FK → VENDA)  
- codigo_peca (FK → PEÇA)  
- quantidade  
- valor_unitario

### **6. ENTRADA_ESTOQUE**
- id_entrada (PK)  
- codigo_peca (FK → PEÇA)  
- id_fornecedor (FK → FORNECEDOR)  
- quantidade  
- data_entrada  
- numero_nota_fiscal

---

## Relacionamentos
- **Fornecedor 1:N Entrada_Estoque**  
- **Peça 1:N Entrada_Estoque**  
- **Cliente 1:N Venda**  
- **Venda 1:N ItemVenda**  
- **Peça 1:N ItemVenda**

O modelo está normalizado (1FN, 2FN e 3FN).

---

## Estrutura do Repositório
O repositório contém:

- `create_tables.sql` → criação de todas as tabelas e FKs  
- `insert_data.sql` → povoamento inicial do banco  
- `select_queries.sql` → consultas SELECT usando JOIN, WHERE, ORDER BY, LIMIT  
- `update_delete.sql` → comandos UPDATE e DELETE com condições  
- `README.md` → documentação do projeto

Todos os scripts atendem às exigências da atividade.

---

## Como Executar (MySQL Workbench recomendado)

1. Abra o MySQL Workbench.  
2. Execute o script `create_tables.sql` para criar o banco e todas as tabelas.  
3. Execute o arquivo `insert_data.sql` para inserir dados nas tabelas.  
4. Execute o arquivo `select_queries.sql` para testar as consultas.  
5. Execute `update_delete.sql` para testar atualizações e exclusões.  

A ordem correta de execução é:  
**1) create_tables → 2) insert_data → 3) select_queries → 4) update_delete**

---

## Checklist de Entrega (Exigências da Atividade)
- [x] Repositório público no GitHub  
- [x] Scripts SQL organizados  
- [x] Script com INSERTs  
- [x] Script com SELECTs (JOIN, WHERE, ORDER BY, LIMIT)  
- [x] ≥ 3 comandos UPDATE com condições  
- [x] ≥ 3 comandos DELETE com condições  
- [x] Documentação README completa  

Tudo está contemplado no repositório.

---

## Autor

Projeto desenvolvido por Johnny, aluno de ADS na Cruzeiro do Sul EAD para avaliação acadêmica.
