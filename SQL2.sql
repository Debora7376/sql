SELECT ano, COUNT(*) from cursos
where totaulas > 30
GROUP BY ano
HAVING ano > 2013
ORDER BY COUNT(*) DESC;

SELECT AVG (carga) from cursos;

SELECT carga, COUNT() from cursos
where ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG (carga) FROM cursos);

-- exercicio 1 
SELECT profissao, count(profissao) from gafanhotos
group by profissao;
-- exercicio 2
SELECT sexo, COUNT(nascimento) from gafanhotos WHERE nascimento > '2005/01/01'
GROUP by sexo;
-- exercicio 3
select nacionalidade,count(*)from gafanhotos 
where nacionalidade not like 'brasil'
group by nacionalidade
having count(nacionalidade ) >='3';
-- exercicio 4

SELECT AVG(altura) from gafanhotos;
SELECT peso from gafanhotos where peso > 100
GROUP by altura
HAVING altura > (SELECT AVG(altura) from gafanhotos);

desc gafanhotos;
ALTER table gafanhotos add cursopreferido int;

ALTER table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso);

SELECT * FROM gafanhotos;

SELECT gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

CREATE table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcursos)
) default charset = utf8;

insert into gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2'),
(DEFAULT, '2014-03-01', '3', '8'),
(DEFAULT, '2015-09-06', '1', '5'),
(DEFAULT, '2015-04-09', '4', '1');

select * from gafanhoto_assiste_curso;

SELECT g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
ORDER BY g.nome;