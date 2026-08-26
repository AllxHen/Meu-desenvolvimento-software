CREATE DATABASE DB_SDA;
USE DB_SDA;

CREATE TABLE perfil (
    id_perfil INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    dt_admissao DATE NOT NULL,
    cpf_cnpj VARCHAR(24) NOT NULL UNIQUE,
    dt_nasc DATE NOT NULL
);

CREATE TABLE agendamento (
    id_agendamento INT PRIMARY KEY AUTO_INCREMENT,
    id_profissional INT NOT NULL,
    id_servico INT NOT NULL,
    id_cliente INT NOT NULL,
    id_status_geral INT NOT NULL,
    data_agendamento DATE NOT NULL
);
  
CREATE TABLE atendente (
    id_atendente INT PRIMARY KEY AUTO_INCREMENT,
    especialidade VARCHAR(100) NOT NULL,
    id_perfil INT NOT NULL,
    id_status_geral INT NOT NULL
);

CREATE TABLE avaliacao (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    observacao VARCHAR(300) NOT NULL,
    id_cliente INT NOT NULL,
    id_profissional INT NOT NULL,
    nota INT NOT NULL
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    id_perfil INT NOT NULL,
    id_status_geral INT NOT NULL
);

CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_api_pagamento VARCHAR(100) UNIQUE,
    id_status_geral INT NOT NULL,
    id_agendamento INT NOT NULL,
    valor DECIMAL(10 , 2 ) NOT NULL,
    data_pagamento DATE NOT NULL,
    forma_pagamento VARCHAR(100) NOT NULL
);
  
CREATE TABLE comprovante (
    id_comprovante INT PRIMARY KEY AUTO_INCREMENT,
    data_emissao DATE NOT NULL,
    id_pagamento INT NOT NULL,
    id_status_geral INT NOT NULL,
    id_agendamento INT NOT NULL
);
    
CREATE TABLE servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    nome_servico VARCHAR(100) NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    duracao TIME NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_status_geral INT NOT NULL,
    categoria VARCHAR(100) NOT NULL
);
     
CREATE TABLE states (
    id_status_geral INT PRIMARY KEY,
    desc_status VARCHAR(100) NOT NULL
);
     
CREATE TABLE profissional (
id_profissional INT PRIMARY KEY AUTO_INCREMENT,
id_perfil INT NOT NULL,
id_status_geral INT NOT NULL
);

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_perfil
FOREIGN KEY (id_perfil)
REFERENCES perfil(id_perfil);

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE profissional
ADD CONSTRAINT fk_profissional_perfil
FOREIGN KEY (id_perfil)
REFERENCES perfil(id_perfil);

ALTER TABLE profissional
ADD CONSTRAINT fk_profissional_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE atendente
ADD CONSTRAINT fk_atendente_perfil
FOREIGN KEY (id_perfil)
REFERENCES perfil(id_perfil);

ALTER TABLE atendente
ADD CONSTRAINT fk_atendente_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE servico
ADD CONSTRAINT fk_servico_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE agendamento
ADD CONSTRAINT fk_agendamento_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente);

ALTER TABLE agendamento
ADD CONSTRAINT fk_agendamento_profissional
FOREIGN KEY (id_profissional)
REFERENCES profissional(id_profissional);

ALTER TABLE agendamento
ADD CONSTRAINT fk_agendamento_servico
FOREIGN KEY (id_servico)
REFERENCES servico(id_servico);

ALTER TABLE agendamento
ADD CONSTRAINT fk_agendamento_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE pagamento
ADD CONSTRAINT fk_pagamento_agendamento
FOREIGN KEY (id_agendamento)
REFERENCES agendamento(id_agendamento);

ALTER TABLE pagamento
ADD CONSTRAINT fk_pagamento_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE comprovante
ADD CONSTRAINT fk_comprovante_pagamento
FOREIGN KEY (id_pagamento)
REFERENCES pagamento(id_pagamento);

ALTER TABLE comprovante
ADD CONSTRAINT fk_comprovante_agendamento
FOREIGN KEY (id_agendamento)
REFERENCES agendamento(id_agendamento);

ALTER TABLE comprovante
ADD CONSTRAINT fk_comprovante_status
FOREIGN KEY (id_status_geral)
REFERENCES states(id_status_geral);

ALTER TABLE avaliacao
ADD CONSTRAINT fk_avaliacao_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente(id_cliente);

ALTER TABLE avaliacao
ADD CONSTRAINT fk_avaliacao_profissional
FOREIGN KEY (id_profissional)
REFERENCES profissional(id_profissional);

INSERT INTO states
(id_status_geral, desc_status)
VALUES
(1, 'Ativo'),
(2, 'Inativo'),
(3, 'Pendente'),
(4, 'Cancelado'),
(5, 'Concluido'),
(6, 'Em andamento');

INSERT INTO perfil
(nome, telefone, email, senha, dt_admissao, cpf_cnpj, dt_nasc)
VALUES
('João Silva', '(11) 98765-4321', 'joao.silva@gmail.com', 'Joao@123', '2026-08-05', '123.456.789-00', '1998-04-15'),
('Maria Oliveira', '(11) 99876-5432', 'maria.oliveira@gmail.com', 'Maria@123', '2026-08-05', '987.654.321-00', '2000-07-22'),
('Carlos Souza', '(11) 97777-8888', 'carlos.souza@gmail.com', 'Carlos@123', '2026-08-05', '456.789.123-00', '1995-12-10'),
('Ana Costa', '(11) 96666-5555', 'ana.costa@gmail.com', 'Ana@123', '2026-08-05', '321.654.987-00', '2001-03-08'),
('Lucas Pereira', '(11) 95555-4444', 'lucas.pereira@gmail.com', 'Lucas@123', '2026-08-05', '654.321.987-00', '1997-09-30'),
('Fernanda Santos', '(11) 94444-3333', 'fernanda.santos@gmail.com', 'Fernanda@123', '2026-08-05', '789.123.654-00', '1999-11-18'),
('Pedro Alves', '(11) 93333-1111', 'pedro.alves@gmail.com', 'Pedro@123', '2026-08-05', '111.222.333-44', '1990-02-10'),
('Juliana Lima', '(11) 93333-2222', 'juliana.lima@gmail.com', 'Juliana@123', '2026-08-05', '222.333.444-55', '1992-06-15'),
('Ricardo Gomes', '(11) 93333-3333', 'ricardo.gomes@gmail.com', 'Ricardo@123', '2026-08-05', '333.444.555-66', '1988-09-20'),
('Patricia Rocha', '(11) 93333-4444', 'patricia.rocha@gmail.com', 'Patricia@123', '2026-08-05', '444.555.666-77', '1991-12-05'),
('Bruno Martins', '(11) 93333-5555', 'bruno.martins@gmail.com', 'Bruno@123', '2026-08-05', '555.666.777-88', '1987-03-28'),
('Camila Ferreira', '(11) 93333-6666', 'camila.ferreira@gmail.com', 'Camila@123', '2026-08-05', '666.777.888-99', '1993-08-17'),
('Rafael Mendes', '(11) 92222-1111', 'rafael.mendes@gmail.com', 'Rafael@123', '2026-08-05', '777.111.222-33', '1989-01-15'),
('Beatriz Costa', '(11) 92222-2222', 'beatriz.costa@gmail.com', 'Beatriz@123', '2026-08-05', '888.222.333-44', '1994-04-20'),
('Gustavo Lima', '(11) 92222-3333', 'gustavo.lima@gmail.com', 'Gustavo@123', '2026-08-05', '999.333.444-55', '1991-07-08'),
('Larissa Souza', '(11) 92222-4444', 'larissa.souza@gmail.com', 'Larissa@123', '2026-08-05', '111.444.555-66', '1996-10-12'),
('Thiago Ribeiro', '(11) 92222-5555', 'thiago.ribeiro@gmail.com', 'Thiago@123', '2026-08-05', '222.555.666-77', '1988-12-03'),
('Vanessa Martins', '(11) 92222-6666', 'vanessa.martins@gmail.com', 'Vanessa@123', '2026-08-05', '333.666.777-88', '1993-05-25');

INSERT INTO cliente
(id_perfil, id_status_geral)
VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1);

INSERT INTO profissional
(id_perfil, id_status_geral)
VALUES
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1);

INSERT INTO atendente
(especialidade, id_perfil, id_status_geral)
VALUES
('Cardiologia', 13, 1),
('Clínica Médica', 14, 1),
('Endocrinologia', 15, 1),
('Ginecologia', 16, 1),
('Pediatria', 17, 1),
('Dermatologia', 18, 1);

INSERT INTO servico
(nome_servico, descricao, duracao, valor, id_status_geral, categoria)
VALUES
('Corte de Cabelo', 'Corte masculino tradicional', '00:30:00', 30.00, 1, 'Beleza'),
('Manicure', 'Cuidados e esmaltação das unhas', '01:00:00', 40.00, 2, 'Estetica'),
('Massagem Relaxante', 'Sessão de massagem corporal relaxante', '01:30:00', 90.00, 3, 'Bem-estar'),
('Limpeza de Pele', 'Tratamento facial para remoção de impurezas', '00:45:00', 70.00, 4, 'Estetica'),
('Design de Sobrancelha', 'Modelagem e alinhamento das sobrancelhas', '00:20:00', 20.00, 5, 'Beleza'),
('Barba', 'Aparar e modelar a barba', '00:30:00', 25.00, 6, 'Beleza');


INSERT INTO agendamento
(id_profissional, id_servico, id_cliente, id_status_geral, data_agendamento)
VALUES
(1, 2, 1, 1, '2026-08-10'),
(2, 3, 2, 3, '2026-08-11'),
(3, 1, 3, 6, '2026-08-12'),
(4, 5, 4, 5, '2026-08-13'),
(5, 4, 5, 4, '2026-08-14'),
(6, 6, 6, 2, '2026-08-15');

INSERT INTO pagamento
(valor, data_pagamento, forma_pagamento, id_status_geral, id_agendamento)
VALUES
(30.00, '2026-07-11', 'Pix', 5, 1),
(90.00, '2026-03-17', 'Debito', 5, 2),
(40.00, '2026-06-11', 'Pix', 3, 3),
(20.00, '2026-03-10', 'Debito', 4, 4),
(10.00, '2026-05-12', 'Pix', 1, 5),
(70.00, '2026-04-19', 'Credito', 6, 6);

INSERT INTO comprovante
(data_emissao, id_pagamento, id_status_geral, id_agendamento)
VALUES
('2026-11-30', 1, 5, 1),
('2026-01-22', 2, 5, 2),
('2026-01-15', 3, 3, 3),
('2026-07-21', 4, 1, 4),
('2026-11-11', 5, 4, 5),
('2026-12-24', 6, 6, 6);

INSERT INTO avaliacao
(observacao, nota, id_cliente, id_profissional)
VALUES
('achei bem legal o atendimento', 5, 1, 1),
('achei o paciente bem educado', 4, 2, 2),
('odiei o paciente rancou meu dente', 1, 3, 3),
('amei o atendimento super fofa', 5, 4, 4),
('Ele intortou meu pe, nao volto mais', 2, 5, 5),
('fiquei esperando e dizeram que eu nao marquei, odiei', 3, 6, 6);
