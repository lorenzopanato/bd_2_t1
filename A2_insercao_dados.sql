INSERT INTO CLIENTE (id_cliente, nome, cpf, email) VALUES (1, 'João da Silva', '05244195200', 'joaosilva@gmail.com');
INSERT INTO CLIENTE (id_cliente, nome, cpf, email) VALUES (2, 'Maria Oliveira', '24762294121', 'mariaoliveira@gmail.com');
INSERT INTO CLIENTE (id_cliente, nome, cpf, email) VALUES (3, 'Carlos Souza', '12354398730', 'carlossouza@hotmail.com');
INSERT INTO CLIENTE (id_cliente, nome, cpf, email) VALUES (4, 'Ana Pereira', '87232188512', 'anapereira@gmail.com');
INSERT INTO CLIENTE (id_cliente, nome, cpf, email) VALUES (5, 'Marcela Lima', '04123485522', 'marcela.lima@gmail.com');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (1, '23142-648', 122, 'Apto 1204', 1);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (2, '12215-648', 467, '', 1);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (3, '20216-942', 874, '', 2);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (4, '91360-810', 900, '', 3);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (5, '45278-912', 656, 'Apto 901', 4);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (6, '72389-422', 754, '', 5);
INSERT INTO ENDERECO (id_endereco, cep, numero, complemento, id_cliente) VALUES (7, '67561-553', 324, 'Apto 203', 5);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CATEGORIA (id_categoria, nome) VALUES (1, 'Eletrônicos');
INSERT INTO CATEGORIA (id_categoria, nome) VALUES (2, 'Livros');
INSERT INTO CATEGORIA (id_categoria, nome) VALUES (3, 'Roupas');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (1, 3999.99, 'Iphone 13', 1);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (2, 7299.99, 'Ntebook', 1);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (3, 19.99,'Fone de Ouvido', 1);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (4, 239.99, 'Carregador', 1);

INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (5, 39.99, 'A revolução dos bichos', 2);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (6, 99.99, 'Hábitos Atômicos', 2);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (7, 59.99, 'Pai Rico, Pai Pobre', 2);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (8, 29.99, 'Diário de um Banana', 2);

INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (9, 79.99, 'Camiseta', 3);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (10, 239.99, 'Calça de sarja', 3);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (11, 59.99, 'Boné', 3);
INSERT INTO PRODUTO (id_produto, preco, nome, id_categoria) VALUES (12, 299.99, 'Casaco', 3);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO TRANSPORTADORA (id_transportadora, nome, email) VALUES (1, 'Transporte Rápido', 'contato@transporterapido.com');
INSERT INTO TRANSPORTADORA (id_transportadora, nome, email) VALUES (2, 'Entrega Segura', 'suporte@entregasegura.com');

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO PEDIDO (id_pedido, data_hora, forma_pgto, id_endereco, id_cliente) VALUES (1, TIMESTAMP '2024-01-01 10:00:00', 'Cartão de Crédito', 1, 1);
INSERT INTO PEDIDO (id_pedido, data_hora, forma_pgto, id_endereco, id_cliente) VALUES (2, TIMESTAMP '2024-01-02 11:00:00', 'Boleto', 3, 2);
INSERT INTO PEDIDO (id_pedido, data_hora, forma_pgto, id_endereco, id_cliente) VALUES (3, TIMESTAMP '2024-01-03 12:00:00', 'Cartão de Débito', 5, 4);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (1, 1, DATE '2024-01-05', 'Entregue', 1, 1, 1);
INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (2, 2, DATE '2024-01-06', 'Em Trânsito', 2, 1, 1);

INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (3, 1, DATE '2024-01-07', 'Entregue', 5, 2, 2);
INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (4, 3, DATE '2024-01-08', 'Entregue', 6, 2, 2);

INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (5, 1, DATE '2024-01-09', 'Em Trânsito', 9, 3, 1);
INSERT INTO ITEM (id_item, quantidade, data_entrega, status, id_produto, id_pedido, id_transportadora) VALUES (6, 2, DATE '2024-01-10', 'Entregue', 10, 3, 1);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVALIACAO (id_avaliacao, nota, comentario, id_produto, id_cliente) VALUES (1, 5, 'Excelente produto!', 1, 1);
INSERT INTO AVALIACAO (id_avaliacao, nota, comentario, id_produto, id_cliente) VALUES (2, 4.2, 'Bom custo-benefício', 1, 2);
INSERT INTO AVALIACAO (id_avaliacao, nota, comentario, id_produto, id_cliente) VALUES (3, 3.2, 'Produto mediano', 2, 3);
INSERT INTO AVALIACAO (id_avaliacao, nota, comentario, id_produto, id_cliente) VALUES (4, 5, 'Excelente livro!', 5, 4);
INSERT INTO AVALiACAO (id_avaliacao, nota, comentario, id_produto, id_cliente) VALUES (5, 4.8, 'Gostei muito', 9, 5);
