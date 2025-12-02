-- Cria o banco de dados e tabelas petcare
CREATE DATABASE petcare;
USE petcare;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(120) NOT NULL,
    endereco VARCHAR(255),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Pet (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    nome_pet VARCHAR(120) NOT NULL,
    especie ENUM('cão', 'gato') NOT NULL,
    raca VARCHAR(120),
    peso DECIMAL(5,2),
    data_nascimento DATE,
    observacoes_gerais TEXT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(120) NOT NULL,
    descricao TEXT,
    duracao_estimada INT NOT NULL,
    valor_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120),
    status ENUM('ativo', 'inativo') DEFAULT 'ativo'
);

CREATE TABLE Agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pet INT NOT NULL,
    id_servico INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_hora DATETIME NOT NULL,
    status ENUM('agendado', 'concluído', 'cancelado', 'não compareceu') DEFAULT 'agendado',
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);
