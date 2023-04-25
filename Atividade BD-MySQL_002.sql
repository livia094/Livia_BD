show databases;
create database clinica_psicologia;
use clinica_psicologia;
show tables;
create table clinica ( 
	nome VARCHAR(40) NOT NULL,
	CNPJ BIGINT NOT NULL,
	Endereço VARCHAR(40) NOT NULL,
	email VARCHAR(45) NOT NULL,
	Site VARCHAR(40) NOT NULL,
	telefone BIGINT NOT NULL,
	PRIMARY KEY (CNPJ)
	);
     
create table paciente (
	nome VARCHAR(30) NOT NULL,
	CPF BIGINT NOT NULL,
	email VARCHAR(30) NOT NULL,
	Endereço VARCHAR(30) NOT NULL,
    telefone BIGINT NOT NULL,
    PRIMARY KEY (CPF)  
    );

drop table if exists Psicologo;
    
create table Psicologo (
	nome VARCHAR(40) NOT NULL,
	CRP BIGINT NOT NULL,
    Matricula BIGINT NOT NULL,
	email VARCHAR(40) NOT NULL,
    PRIMARY KEY (CRP)
    );
 
 
INSERT INTO clinica (nome, CNPJ, Endereço, email, Site, telefone) 
VALUES ('Foco Psicologia', '90537564000150', 'Rua Ildefonso,277-Joaquim', 'Foco_Psicologia@gmail.com', 'Foco_Clinica.com', '8591043321');

INSERT INTO paciente (nome, CPF, email, Endereço, telefone)
VALUES ('Rafaela Rocha Goncalves','44734343896','RafaelaRocha@gmail.com', 'Rua Morada Nova - CE', '8898682150'),
       ('Estevan Barros Sousa','68476630301','EstevanBarrSous@gmail.com', 'Rua Camila Bezerra - CE', '8895356666'),
       ('Carla Melo Azevedo','36210805620','CarlaMelAzeved@gmail.com', 'Rua Manuel Monteiro - CE', '8596605867'),
       ('Beatrice Martins Costa','12344635041','BeatriceMartins@gmail.com', 'Rua do Cajueiro - CE', '8591216958');
       
INSERT INTO Psicologo (nome, CRP, matricula, email)
VALUES ('Felipe Gomes Carvalho','116423', '6423', 'Felipegomes73@gmail.com'),
       ('Isabela Lima Ferreira','117530', '7530', 'IsabelaLima@gmail.com'),
       ('Tomás Azevedo Ribeiro','115646', '5646', 'TomásRibeiro09@gmail.com'),
       ('Estevan Pereira Cunha','118912', '8912', 'EstevannCunhaa@gmail.com');
       

-- Alterando o nome da tabela "Psicologo" para "psicologo"
ALTER TABLE Psicologo RENAME TO psicologo;



       
       