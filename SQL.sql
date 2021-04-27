-- selecionar o banco de dados que esta utilizando
use cadastro; 

-- inserir dados
INSERT into gafanhotos 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Debora', '1997-04-09', 'F', '46.4', '1.50', 'Brasil');

-- selecionar as informacoes da tabela
SELECT * from gafanhotos;

-- deletar especificamente os id de uma tabela
DELETE FROM gafanhotos where id in (1 , 3, 4, 5,6);

-- descricao da tabela
desc gafanhotos;

-- adicionando uma coluna nova
ALTER table gafanhotos 
add column profissao varchar (10);

-- apagamdo uma coluna
ALTER table gafanhotos 
drop column profissao;

-- add uma coluna com o lugar desejado
ALTER table gafanhotos 
add column profissao varchar(10) after nome;

-- modificao a coluna (mais letras)
ALTER table gafanhotos
modify column profissao varchar(20);

-- mudar nome da coluna
ALTER table gafanhotos 
change column profissao prof varchar (20);

-- mudar nome da tabela
ALTER table pessoas 
rename to gafanhotos;

-- criando nova tabela
CREATE table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2016'
) default charset = utf8; 

-- descricao da tabela 
desc cursos;

-- add nova coluna com primeira
ALTER table cursos 
add column idcurso int first;

-- add chave primaria 
alter table cursos 
add primary key(idcurso);

-- add valores na nova tabela
INSERT into cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução da linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Ritmicas', '40', '30', '2018'),
('9', 'Cozinha Arabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polemica e ganhar inscritos', '5', '2', '2018');

-- selecionar as informacoes da tabela
select * from cursos;

-- selecionar banco de dados
use cadastro; 

-- arrumar o nome pelo idcurso
UPDATE cursos
set nome = 'HTML5'
WHERE idcurso = '1';

-- arrumar o nome e ano pelo idcurso
UPDATE cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

UPDATE cursos
set nome = 'Java', carga = '40', ano = '2015' 
where idcurso = '5'
LIMIT 1;

-- deletando linhas pelo ano utilizando delete
delete from cursos
WHERE ano = '2018';

-- no cosole mostra a estrutura de criação da tabela no phpmyadmin 
show create table amigos;

-- no cosole mostra a estrutura de criação da database no phpmyadmin 
show create database exemplo;