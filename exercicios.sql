SELECT * from cursos
where nome like 'P%';

SELECT * from cursos 
where nome not LIKE '%a%';

SELECT * from cursos 
where nome LIKE 'PH%p%';

select DISTINCT nacionalidade from gafanhotos
order by nacionalidade;

SELECT COUNT(*) from cursos;

SELECT nome, max(totaulas) from cursos;

SELECT sum(totaulas) from cursos where ano = '2016';

SELECT avg(totaulas) from cursos;

-- exercicio 1
SELECT * from gafanhotos where sexo like 'F';

-- exercicio 2 
SELECT * from gafanhotos where nascimento BETWEEN '2000/01/1' AND '2015/12/31';

-- exercico 3
SELECT nome from gafanhotos where sexo like 'M' and profissao like 'programador';

-- exercicio 4
select * FROM gafanhotos where sexo like 'F' and nacionalidade like 'brasil' and nome like 'j%';

-- exercicio 5 
SELECT nome, nacionalidade from gafanhotos where nome like '%silva%' and nacionalidade not like 'brasil' and peso < 100;
-- exercicio 6
SELECT max(altura) from gafanhotos where sexo like 'M' and nacionalidade like 'brasil';
-- exercicio 7
SELECT avg(peso) from gafanhotos;
-- exercicio 8
SELECT min(peso) from gafanhotos where sexo like 'F' and nacionalidade not like 'brasil' AND nascimento BETWEEN '1990/01/01' and '2000/12/31';
-- exercicio 9 
SELECT COUNT(nome) from gafanhotos where sexo like 'f' and altura >1.90;
 