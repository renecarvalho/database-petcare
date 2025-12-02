UPDATE Funcionario SET status = 'inativo' WHERE id_funcionario = 4;
UPDATE Servico SET valor_base = 120.00 WHERE nome_servico = 'Banho + Hidratação';
UPDATE Cliente SET endereco = 'Rua Nova Esperança, 321' WHERE id_cliente = 3;

DELETE FROM Pet WHERE id_cliente NOT IN (SELECT id_cliente FROM Cliente);
DELETE FROM Agendamento WHERE status = 'cancelado' AND data_hora < '2025-01-01';
DELETE FROM Funcionario WHERE status = 'inativo';