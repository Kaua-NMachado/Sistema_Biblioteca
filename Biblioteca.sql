create database bibliotca;
use biblioteca;

create table Autor(
	Id int auto_increment not null primary key,
	Nome varchar(150) not Null,
	Idade date,
	País varchar(50)
);

create table Livro(
	Id int auto_increment not null primary key,
    Nome varchar(150) not null,
    preço decimal(10,2),
    id_autor int,
    constraint fk_autor foreign key (id_autor) references autor(Id)
);

create table editora(
	Id int auto_increment not null primary key,
    Nome varchar(150),
    data_criação date,
    Responsável varchar(150),
    País varchar(150),
    id_livro int,
    constraint fk_livro foreign key (id_livro) references Livro(Id)
);

create table vendas(
	Id int auto_increment not null primary key,
    Dia_Venda date,
    qtd_vendida int,
    valor decimal(10,2),
    id_livro2 int,
    constraint fk_livros1 foreign key (id_livro2) references Livro(Id)
);



INSERT INTO Autor (Nome, Idade, País) VALUES 
	('Machado de Assis', '1839-06-21', 'Brasil'),
	('George Orwell', '1903-06-25', 'Reino Unido'),
	('J.K. Rowling', '1965-07-31', 'Reino Unido'),
	('Gabriel García Márquez', '1927-03-06', 'Colômbia'),
	('Agatha Christie', '1890-09-15', 'Reino Unido'),
	('Stephen King', '1947-09-21', 'EUA'),
	('Clarice Lispector', '1920-12-10', 'Brasil'),
	('Ernest Hemingway', '1899-07-21', 'EUA'),
	('Tolkien', '1892-01-03', 'Reino Unido'),
	('Virginia Woolf', '1882-01-25', 'Reino Unido'),
	('Jorge Amado', '1912-08-10', 'Brasil'),
	('Isabel Allende', '1942-08-02', 'Chile'),
	('Haruki Murakami', '1949-01-12', 'Japão'),
	('Franz Kafka', '1883-07-03', 'República Tcheca'),
	('Herman Melville', '1819-08-01', 'EUA'),
	('Victor Hugo', '1802-02-26', 'França'),
	('Fiódor Dostoiévski', '1821-11-11', 'Rússia'),
	('Jane Austen', '1775-12-16', 'Reino Unido'),
	('Érico Veríssimo', '1905-12-17', 'Brasil'),
	('Maya Angelou', '1928-04-04', 'EUA');
    
select * from autor;

alter table Autor change Idade  Nascimento date;

INSERT INTO Livro (Nome, preço, id_autor) VALUES 
	('Dom Casmurro', 39.90, 1),
	('Memórias Póstumas de Brás Cubas', 35.00, 1),
	('1984', 42.00, 2),
	('A Revolução dos Bichos', 29.90, 2),
	('Harry Potter e a Pedra Filosofal', 55.00, 3),
	('Harry Potter e a Câmara Secreta', 55.00, 3),
	('Cem Anos de Solidão', 62.00, 4),
	('O Amor nos Tempos do Cólera', 58.00, 4),
	('Assassinato no Expresso Oriente', 34.90, 5),
	('Morte no Nilo', 34.90, 5),
	('O Iluminado', 49.90, 6),
	('It: A Coisa', 69.90, 6),
	('A Hora da Estrela', 25.00, 7),
	('O Velho e o Mar', 30.00, 8),
	('O Senhor dos Anéis: A Sociedade do Anel', 75.00, 9),
	('Mrs. Dalloway', 38.00, 10),
	('Capitães da Areia', 45.00, 11),
	('A Casa dos Espíritos', 52.00, 12),
	('Kafka à Beira-Mar', 60.00, 13),
	('O Processo', 33.00, 14);
    
select * from livro;

INSERT INTO editora (Nome, data_criação, Responsável, País, id_livro) VALUES 
	('Companhia das Letras', '1986-01-01', 'Luiz Schwarcz', 'Brasil', 1),
	('Editora Record', '1942-01-01', 'Sônia Machado Jardim', 'Brasil', 2),
	('Penguin Books', '1935-01-01', 'Reirdon Jones', 'Reino Unido', 3),
	('Globo Livros', '1952-01-01', 'Mauro Palermo', 'Brasil', 4),
	('Rocco', '1975-01-01', 'Paulo Rocco', 'Brasil', 5),
	('Bloomsbury Publishing', '1986-10-22', 'Nigel Newton', 'Reino Unido', 6),
	('Sudamericana', '1939-01-01', 'Jaime de Espinal', 'Argentina', 7),
	('HarperCollins', '1989-01-01', 'Brian Murray', 'EUA', 8),
	('L&PM Editores', '1974-01-01', 'Ivan Pinheiro Machado', 'Brasil', 9),
	('Intrínseca', '2003-01-01', 'Jorge Oakim', 'Brasil', 10),
	('Sextante', '1998-01-01', 'Marcos Pereira', 'Brasil', 11),
	('Editora Arqueiro', '2011-01-01', 'Tomás da Veiga', 'Brasil', 12),
	('Zahar', '1956-01-01', 'Cristina Zahar', 'Brasil', 13),
	('Scribner', '1846-01-01', 'Charles Scribner', 'EUA', 14),
	('Allen & Unwin', '1914-01-01', 'Rayner Unwin', 'Austrália', 15),
	('Hogarth Press', '1917-01-01', 'Virginia Woolf', 'Reino Unido', 16),
	('Casa dos Espíritos Ed.', '1990-01-01', 'Isabel Allende', 'Chile', 18),
	('Kodansha', '1909-01-01', 'Yoshinobu Noma', 'Japão', 19),
	('Kurt Wolff Verlag', '1913-01-01', 'Kurt Wolff', 'Alemanha', 20),
	('Gallimard', '1911-01-01', 'Antoine Gallimard', 'França', 17);
    
Select * from Editora;

INSERT INTO vendas (Dia_Venda, qtd_vendida, valor, id_livro2) VALUES 
	('2023-10-01', 2, 79.80, 1),
	('2023-10-02', 1, 35.00, 2),
	('2023-10-03', 5, 210.00, 3),
	('2023-10-04', 3, 89.70, 4),
	('2023-10-05', 10, 550.00, 5),
	('2023-10-06', 1, 55.00, 6),
	('2023-10-07', 2, 124.00, 7),
	('2023-10-08', 4, 232.00, 8),
	('2023-10-09', 1, 34.90, 9),
	('2023-10-10', 3, 104.70, 10),
	('2023-10-11', 1, 49.90, 11),
	('2023-10-12', 2, 139.80, 12),
	('2023-10-13', 1, 25.00, 13),
	('2023-10-14', 6, 180.00, 14),
	('2023-10-15', 1, 75.00, 15),
	('2023-10-16', 2, 76.00, 16),
	('2023-10-17', 3, 135.00, 17),
	('2023-10-18', 1, 52.00, 18),
	('2023-10-19', 4, 240.00, 19),
	('2023-10-20', 2, 66.00, 20);
    
Select * from Vendas;


 select Nome, 
	Nascimento, 
	timestampdiff(year, Nascimento, curdate()) as IdadeFalecido_Atual 
    from Autor 
    order by Nascimento asc;
    
select nome from autor where país = "Brasil";

select autor.nome, livro.nome 
	from autor  
	join livro 
	on autor.Id = Livro.Id_autor 
	group by Livro.nome;
    
select livro.nome, 
	livro.preço, 
	vendas.qtd_vendida,
	livro.preço*vendas.qtd_vendida as Preço_Total 
	from Livro 
    join vendas
    on livro.Id = vendas.id_livro2;
    


