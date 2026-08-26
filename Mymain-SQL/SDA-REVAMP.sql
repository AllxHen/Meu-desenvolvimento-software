USE db_sda;

SELECT id_perfil, id_status_geral from cliente; 

SELECT id_profissional, id_perfil, id_status_geral from profissional;

SELECT nome from perfil ORDER BY nome ASC;

SELECT id_agendamento, id_profissional, id_servico, id_cliente, id_status_geral, data_agendamento FROM agendamento ORDER BY id_agendamento, id_profissional, id_servico, id_cliente, id_status_geral, data_agendamento ASC; -- listar os ids e as datas em ordem crescente

SELECT *
FROM pagamento
WHERE valor > 35; 

SELECT data_pagamento
FROM pagamento
WHERE data_pagamento > 20260317;


SELECT
c.id_perfil AS Perfil_cliente,
p.id_perfil AS Perfil_profissional,
a.data_agendamento
FROM agendamento a
INNER JOIN cliente c
ON a.id_cliente = c.id_cliente
INNER JOIN profissional p
ON a.id_profissional = p.id_profissional;


SELECT
pc.nome AS Cliente,
pp.nome AS Profissional,
a.data_agendamento AS Marcado
FROM agendamento a
INNER JOIN cliente c
ON a.id_cliente = c.id_cliente
INNER JOIN perfil pc
ON pc.id_perfil = c.id_perfil
INNER JOIN profissional p
ON p.id_profissional = a.id_profissional
INNER JOIN perfil pp
ON pp.id_perfil = p.id_perfil;

SELECT 
pc.nome AS Cliente,
pp.nome AS profissional,
n.nome_servico AS Servico,
a.data_agendamento AS Marcado,
d.descricao,
v.valor,
sc.desc_status AS situação
FROM agendamento a
INNER JOIN cliente c
ON a.id_cliente = c.id_cliente
INNER JOIN profissional p
ON a.id_profissional = p.id_profissional
INNER JOIN servico n
ON n.id_servico = a.id_servico
INNER JOIN perfil pc
ON pc.id_perfil = p.id_perfil
INNER JOIN perfil pp
ON pp.id_perfil = c.id_perfil
INNER JOIN servico d
ON d.id_servico = a.id_servico
INNER JOIN servico v
ON v.id_servico = a.id_servico
INNER JOIN states s
ON s.id_status_geral = a.id_status_geral
INNER JOIN states sc
ON sc.id_status_geral = c.id_status_geral;

SELECT data_agendamento
FROM agendamento
WHERE DATE(data_agendamento) = '20260801';

SELECT
se.nome_servico AS especialidade,
COUNT(p.id_profissional) AS Quantidade_profissional
FROM agendamento a
INNER JOIN profissional p
ON a.id_profissional = p.id_profissional
INNER JOIN servico se
ON se.id_servico = a.id_servico
GROUP BY se.nome_servico;

SELECT 
se.nome_servico AS especialidade,
COUNT(p.id_profissional) AS quantidade_profissioal
FROM agendamento a
INNER JOIN profissional p
ON a.id_profissional = p.id_profissional
INNER JOIN servico se
ON a.id_servico = se.id_servico
where se.nome_servico not like 'D%' -- tira todos os nomes começados com d 
GROUP BY se.nome_servico
ORDER BY se.nome_servico ASC;

SELECT 
	nome_servico, 
    SUM(valor) AS renda_total
    FROM servico
    group by nome_servico;
    
SELECT
	nome_servico,
    AVG(valor) AS media_valor
    FROM servico
    GROUP BY nome_servico;

SELECT
	pc.nome AS cliente,
    COUNT(a.id_agendamento) Quantidade_agendamento
    FROM agendamento a
    INNER JOIN cliente c
    ON a.id_cliente = c.id_cliente
    INNER JOIN perfil pc
    ON pc.id_perfil = c.id_cliente
    GROUP BY a.id_agendamento, pc.nome
    HAVING COUNT(a.id_agendamento) > 1;
    
DELIMITER $$
	CREATE PROCEDURE buscarcpf (IN cpf_cnpj VARCHAR(24) )
	BEGIN
	SELECT * FROM perfil WHERE perfil.cpf_cnpj = cpf_cnpj;
END
$$

CALL buscarcpf ('987.654.321-00');

DELIMITER $$
	
	



	
	


    
    














