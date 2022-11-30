-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.
create database banco_museu;
use banco_museu;

/*------------------------------------------------------------------------------------------*/
CREATE TABLE autor (
cod_autor int PRIMARY KEY,
nacionalidade_autor char(3) not null,
nome_autor varchar(80) not null
);
insert into (cod_autor, nacionalidade_autor, nome_autor) values
(51299, "Brasileiro", "Osmar Silva"),
(29161, "Australiano", "Mark Tompson"),
(08158, "Alemão", "Adolf Müller"),
(98671, "Japones", "Sujiro Kimymame"),
(96781, "Dinamarquês", "Robert Albertsen"),
(19652, "Polones", "Jhon Widers"),
(11701, "Italiano", "Chielline Rosa"),
(02052, "Canadense", "Leon Davis"),
(29045, "Russo", "Vladimir Putin"),
(04105, "Portugues", "Celma Rodriguez"),
(14080, "Francês", "Will Jacquan"),
(35452, "Brasileiro", "Elma Maria"),
(57651, "Japones", "Takamasa Nomuro"),
(57635, "Canadense", "Nilce Mortis"),
(46515, "Australiano", "Cristopher Nolan"),
(54686, "Frances", "Willian Baguetti"),
(87884, "Alemão", "Arnold Volkswagen"),
(76864, "Brasileiro", "João Nogueira"),
(56798, "Noruegues", "Erling Stuarth"),
(89786, "Brasileiro", "Angelina Costa"), 

/*------------------------------------------------------------------------------------------*/


CREATE TABLE salao (
cod_salao int PRIMARY KEY,
num_salao int not null,
andar_museu int not null,
salao varchar(80) not null
);

insert into (cod_salao, num salao, andar_museu, salao) values
(82630, 10 , 2, "Pre-Historia")
(09127, 9 , 1, "Historia")
(98783, 8 , 2, "Historia Medieval")
(39700, 20 , 3, "Ciencias")
(42124, 7 , 3, "Biologia")
(21903, 6 , 1, "Computação")
(12478, 5 , 2, "Astrologia")
(13208, 4 , 2, "Astronomia")
(13299, 11 , 1, "Arqueologia")
(21830, 2 , 3, "Zoologia")
(31299, 1 , 2, "Apiario")
(02139, 3 , 1, "Geografico")
(00182, 12 , 3, "Armado")
(00273, 16 , 3, "Cultural")
(01010, 13 , 2, "Musical")
(12204, 17 , 2, "Estrutural")
(32133, 14 , 1, "Medieval")
(66677, 18 , 1, "Pre-Reinado")
(77766, 15 , 2, "Quimico")
(77677, 19 , 3, "Cinematografico")
(21830, 21 , 1, "Digital")   

/*------------------------------------------------------------------------------------------*/

CREATE TABLE salao_obra (
salao_cod_salao int not null,
obra_cod_obra int not null,
posicao_salao varchar(80) not null,
FOREIGN KEY(salao_cod_salao) REFERENCES salao (cod_salao)
);

insert into ()
/*------------------------------------------------------------------------------------------*/
CREATE TABLE tipo_funcionario (
cod_tipo_funcionario int PRIMARY KEY,
tipo_funcionario varchar(80) not null
);

insert into (cod_tipo_funcionario, tipo_funcionario) values
(4129135, "Zelador")
(2138882, "Recepcionista")
(1208933, "Segurança")
(1230592, "Guia")
(0237838, "Recepcionista")
(1237921, "Zelador")
(0027282, "Guia")
(0018190, "Segurança")
(5425342, "Zelador")
(3920830, "Recepcionista")
(1290300, "Segurança")
(0929022, "Guia")
(9282922, "Zelador")
(1221412, "Recepcionista")
(1313131, "Segurança")
(3131313, "Guia")
(1138225, "Recepcionista")
(0982109, "Zelador")
(2187321, "Guia")
(2391883, "Segurança")


/*------------------------------------------------------------------------------------------*/
CREATE TABLE funcionario (
id_funcionario int PRIMARY KEY,
nome_funcionario varchar(80) not null,
salario_funcionario decimal(10,2) not null,
cpf_funcionario varchar(14) not null unique,
cod_tipo_funcionario int not null,
FOREIGN KEY(cod_tipo_funcionario) REFERENCES tipo_funcionario (cod_tipo_funcionario)
);

insert into (id_funcionario, nome_funcionario, salario_funcionario, cpf_funcionario, cod_tipo_funcionario) values
(010 , "Claudinei Silva", 1200, 261.525.216-11, 41231321)
(018 , "Rafael Da Costa", 2010, 213.312.218-18, 21930312)
(011 , "Leonardo Muller", 2200, 123.456.789-78, 42151255)
(100 , "Wesley Teixeira", 1500, 321.564.287-08, 21415166)
(092 , "Rai Vericimo", 1900, 369.258.147-34, 41251256)
(099 , "Hudson Monteiro", 3500, 109.624.270-20, 14112311)
(088 , "Roberta Suzuki", 600, 147.166.790-12, 41226688)
(075 , "Vinicius Unlauf", 1200, 510.825.320-61, 66677666)
(024 , "Estuart Casa Grande", 1900, 773.186.160-05, 77667755)
(069 , "Shirley Tamaris", 2100, 123.350.190-90, 09382992)
(096 , "Benta Sales", 3000, 369.283.130-72, 12155125)
(007 , "Ana Maria ", 2100, 693.700.680-23, 15290809)
(022 , "Hildegar Ivete", 2560, 606.324.510-33, 1245678)
(013 , "Maria Albertina", 1200, 310.840.630-26, 87654312)
(055 , "Ivone Ferreira", 1300, 110.840.090-64, 89786871)
(052 , "Osvaldo Viliczinski", 2000, 552.299.130-53, 13570624)
(063 , "Juarez Machado", 1550, 197.988.540-04, 00097648)
(001 , "Jair Inacio", 5900, 390.680.960-95, 24315674)
(054 , "Rodinei Ramos", 4500, 592.559.460-64, 35194862)
(027 , "Tiago Leifer", 6000, 599.272.030-80, 01010520)

/*------------------------------------------------------------------------------------------*/

CREATE TABLE obra (
cod_obra int PRIMARY KEY,
ano_obra year not null,
titu_obra varchar(80) not null unique,
peso_obra decimal(10,2) null,
material_obra varchar(80) null,
desc_estilo_obra varchar(80) null,
cod_autor int not null,
cod_tipo_obra int not null,
FOREIGN KEY(cod_autor) REFERENCES autor (cod_autor)
);

insert into (cod_obra, ano_obra, titu_obra, peso_obra, material_obra, desc_estilo_obra, cod_autor, cod_tipo_obra) values
(3526)
/*------------------------------------------------------------------------------------------*/

CREATE TABLE tipo_obra (
cod_tipo_obra int PRIMARY KEY,
desc_tipo_obra varchar(80) not null
);

CREATE TABLE atividade (
ob_cod_obra int not null,
func_id_funcionario int not null,
hora_entrada time not null,
hora_saida time not null,
data_atividade date not null,
FOREIGN KEY(ob_cod_obra) REFERENCES obra (cod_obra),
FOREIGN KEY(func_id_funcionario) REFERENCES funcionario (id_funcionario)
);

CREATE TABLE manutencao (
mnt_obra int PRIMARY KEY,
data_termi_mnt date not null,
custo_mnt decimal(10,2) not null,
data_ini_mnt date not null,
desc_mnt varchar(80) not null,
cod_obra int not null,
func_id_funcionario int not null,
FOREIGN KEY(cod_obra) REFERENCES obra (cod_obra),
FOREIGN KEY(func_id_funcionario) REFERENCES funcionario (id_funcionario)
);

CREATE TABLE materia_prima (
cod_mat_prima int PRIMARY KEY,
qtd_est_mat int not null,
nome_mat_prima varchar(80) not null
);

CREATE TABLE manu_mat (
Campo_1 int not null,
Campo_2 int not null,
qtd_mat_mnt varchar(15) not null,
FOREIGN KEY(Campo_1) REFERENCES manutencao (mnt_obra),
FOREIGN KEY(Campo_2) REFERENCES materia_prima (cod_mat_prima)
);

ALTER TABLE salao_obra ADD FOREIGN KEY(obra_cod_obra) REFERENCES obra (cod_obra);
ALTER TABLE obra ADD FOREIGN KEY(cod_tipo_obra) REFERENCES tipo_obra (cod_tipo_obra);
