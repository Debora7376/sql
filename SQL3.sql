use cadastro;
-- agrupamento 
SELECT ano, COUNT(*) from cursos

SELECT carga, COUNT(nome) from cursos
group by carga;

SELECT totaulas, COUNT(*) from cursos
GROUP BY totaulas
ORDER by totaulas;

SELECT * FROM cursos WHERE totaulas = 12;

 