create database filmes;
use filmes;

create table filme(
codigo int,
titulo varchar(150),
codigo_diretor int unique,
foreign key diretor (codigo_diretor) references filmes (codigo),
primary key (codigo));


create table diretor (
codigo int,
nome varchar(100),
codigo_filme int ,
foreign key filme (codigo_filme) references diretor (codigo),
primary key (codigo));

insert into filme values 
('1','Rambo','1');

insert into diretor values 
('1','Pedro','1');

select * from filme;
select * from diretor;
select count(*) from filmes where codigo_diretor = 1;