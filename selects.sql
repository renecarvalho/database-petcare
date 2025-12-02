-- SELECT + WHERE + ORDER BY
SELECT nome_pet, especie, raca, peso
    FROM Pet
    WHERE especie = 'cão'
    ORDER BY nome_pet ASC;

-- SELECT + JOIN + WHERE
SELECT 
    Agendamento.id_agendamento,
    Cliente.nome AS cliente,
    Pet.nome_pet AS pet,
    Agendamento.data_hora,
    Agendamento.status
FROM Agendamento
JOIN Cliente ON Agendamento.id_cliente = Cliente.id_cliente
JOIN Pet ON Agendamento.id_pet = Pet.id_pet
WHERE Agendamento.status = 'agendado';

-- SELECT + ORDER BY + LIMIT
SELECT nome_servico, valor_base
    FROM Servico
    ORDER BY valor_base DESC
    LIMIT 3;

-- SELECT + JOIN + ORDER BY
SELECT 
    Agendamento.id_agendamento,
    Funcionario.nome AS funcionario,
    Servico.nome_servico,
    Agendamento.data_hora
FROM Agendamento
JOIN Funcionario ON Agendamento.id_funcionario = Funcionario.id_funcionario
JOIN Servico ON Agendamento.id_servico = Servico.id_servico
ORDER BY Agendamento.data_hora;

-- SELECT + WHERE + LIMIT + JOIN
SELECT 
    Pet.nome_pet,
    Pet.especie,
    Cliente.nome AS dono
FROM Pet
JOIN Cliente ON Pet.id_cliente = Cliente.id_cliente
WHERE Cliente.endereco IS NULL
LIMIT 5;
