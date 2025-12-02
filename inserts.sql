INSERT INTO Cliente (nome, telefone, email, endereco) VALUES
	('Mariana Silva', '16999990001', 'mariana@gmail.com', 'Rua A, 123'),
	('Carlos Santos', '16988887777', 'carlos.santos@gmail.com', 'Av B, 450'),
	('Fernanda Oliveira', '16997776655', 'fe.oliveira@hotmail.com', 'Rua das Flores, 89'),
	('João Pereira', '16996665544', 'joao.pereira@gmail.com', NULL),
	('Bruna Costa', '16995554433', 'bruna.costa@yahoo.com', 'Rua das Laranjeiras, 210');

INSERT INTO Pet (id_cliente, nome_pet, especie, raca, peso, data_nascimento, observacoes_gerais) VALUES
	(1, 'Luna', 'cão', 'Poodle', 4.5, '2021-05-10', 'Muito dócil, tem alergia a shampoo comum.'),
	(1, 'Mingau', 'gato', 'SRD', 3.2, '2022-01-12', 'Desconfiado com estranhos.'),
	(2, 'Thor', 'cão', 'Golden Retriever', 28.0, '2020-09-02', 'Adora água e barulho de secador.'),
	(3, 'Nina', 'gato', 'Persa', 2.8, '2023-03-21', 'Não gosta de tosa higiênica.'),
	(4, 'Spike', 'cão', 'Bulldog Francês', 9.5, '2019-12-15', 'Problemas respiratórios leves.');

INSERT INTO Servico (nome_servico, descricao, duracao_estimada, valor_base) VALUES
	('Banho', 'Banho completo com shampoo neutro', 60, 50.00),
	('Tosa Completa', 'Tosa geral com acabamento profissional', 90, 90.00),
	('Tosa Higiênica', 'Tosa apenas nas áreas íntimas e patas', 40, 40.00),
	('Hidratação', 'Tratamento hidratante para pelos', 45, 70.00),
	('Banho + Hidratação', 'Combo banho e hidratação especial', 90, 100.00);

INSERT INTO Funcionario (nome, cargo, telefone, email, status) VALUES
	('Rafael Mendes', 'Banhista', '16991002030', 'rafael@petcare.com', 'ativo'),
	('Daniela Rocha', 'Tosadora', '16991234567', 'daniela@petcare.com', 'ativo'),
	('Pedro Lima', 'Atendente', '16990011223', 'pedro@petcare.com', 'ativo'),
	('Julia Martins', 'Tosadora', '16998887766', 'julia@petcare.com', 'inativo'),
	('Marcos Ferreira', 'Banhista', '16995556644', 'marcos@petcare.com', 'ativo');

INSERT INTO Agendamento (id_cliente, id_pet, id_servico, id_funcionario, data_hora, status) VALUES
	(1, 1, 1, 1, '2025-02-10 10:00:00', 'agendado'),
	(1, 2, 3, 2, '2025-02-11 14:30:00', 'concluído'),
	(2, 3, 5, 1, '2025-02-12 09:00:00', 'agendado'),
	(3, 4, 4, 2, '2025-02-13 11:15:00', 'cancelado'),
	(4, 5, 2, 4, '2025-02-14 16:45:00', 'agendado');
	