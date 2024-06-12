CREATE TABLE CATEGORIA (
    id_categoria INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    CONSTRAINT PK_CATEGORIA PRIMARY KEY (id_categoria)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE CLIENTE (
    id_cliente INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT PK_CLIENTE PRIMARY KEY (id_cliente)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ENDERECO (
    id_endereco INT NOT NULL,
    cep VARCHAR(10) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(20),
    id_cliente INT NOT NULL,
    CONSTRAINT PK_ENDERECO PRIMARY KEY (id_endereco),
    CONSTRAINT FK_ENDERECO_CLIENTE FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE PEDIDO (
    id_pedido INT NOT NULL,
    data_hora TIMESTAMP(6) NOT NULL,
    forma_pgto VARCHAR(20) NOT NULL,
    id_endereco INT NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT PK_PEDIDO PRIMARY KEY (id_pedido),
    CONSTRAINT FK_PEDIDO_ENDERECO FOREIGN KEY (id_endereco) REFERENCES ENDERECO (id_endereco),
    CONSTRAINT FK_PEDIDO_CLIENTE FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE PRODUTO (
    id_produto INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    id_categoria INT,
    CONSTRAINT PK_PRODUTO PRIMARY KEY (id_produto),
    CONSTRAINT FK_PRODUTO_CATEGORIA FOREIGN KEY (id_categoria) REFERENCES CATEGORIA (id_categoria)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE TRANSPORTADORA (
    id_transportadora INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT PK_TRANSPORTADORA PRIMARY KEY (id_transportadora)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE ITEM (
    id_item INT NOT NULL,
    quantidade INT DEFAULT 1 NOT NULL,
    data_entrega DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    id_produto INT,
    id_pedido INT,
    id_transportadora INT,
    CONSTRAINT PK_ITEM PRIMARY KEY (id_item),
    CONSTRAINT FK_ITEM_PRODUTO FOREIGN KEY (id_produto) REFERENCES PRODUTO (id_produto),
    CONSTRAINT FK_ITEM_PEDIDO FOREIGN KEY (id_pedido) REFERENCES PEDIDO (id_pedido),
    CONSTRAINT FK_ITEM_TRANSPORTADORA FOREIGN KEY (id_transportadora) REFERENCES TRANSPORTADORA (id_transportadora)
);

-- --------------------------------------------------------------------------------------------------------------------------

CREATE TABLE AVALIACAO (
    id_avaliacao INT NOT NULL,
    nota DECIMAL(2, 1) NOT NULL,
    comentario VARCHAR(255),
    id_produto INT NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT PK_AVALIACAO PRIMARY KEY (id_avaliacao),
    CONSTRAINT FK_AVALIACAO_PRODUTO FOREIGN KEY (id_produto) REFERENCES PRODUTO (id_produto),
    CONSTRAINT FK_AVALIACAO_CLIENTE FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

