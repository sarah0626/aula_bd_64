DELETE FROM  funcionarios;

SET SQL_SAFE_UPDATES =0;

SELECT id_deártamento, count(*)AS total_funcionarios
FROM funcionarios
GROUP BY id_departamento;

SELECT id_departamento,count(*)AS total_funcionarios
FROM funcionarios
WHERE salario>10000 GROUP BY id_departamento;

select id_departamento,count(*)AS total_funcionarios
FROM funcionarios
WHERE salario BETWEEN 10000 and 10000 GROUP BY id_departamento;


SELECT id_departamento , sum(salario) from funcionarios GROUP BY id_departamento;

select id_departamento,avg (salario) from funcionarios group by id_departamento;

select id_departamento, round(avg(salario),2)
from funcionarios group by id_departamento;