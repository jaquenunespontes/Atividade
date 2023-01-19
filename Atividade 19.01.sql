CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT, 
nome_categoria VARCHAR(255),
tamanho CHAR,

PRIMARY KEY(id)
);

CREATE TABLE tb_farmacia(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
valor INT,
acompanhamento VARCHAR(255),
função BOOLEAN,
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)

);

INSERT INTO tb_categoria(nome_categoria, tipo)
VALUES("Antibiotico","Dores");

INSERT INTO tb_categoria(nome_cateroria,tipo)
VALUES("Esmalte","Beleza");

INSERT INTO tb_categoria(nome_cateroria,tipo)
VALUES("Shampoo","Higiene");

INSERT INTO tb_categoria(nome_cateroria,tipo)
VALUES("Acessorios","Primeiros Socorros");

INSERT INTO tb_categoria(nome_cateroria,tipo)
VALUES("Tinta de cabelo","Beleza");

INSERT INTO tb_categoria(nome_cateroria,tipo)
VALUES("Fraudas","Bebes");

SELECT * FROM tb_categoria;

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Seda",15,"Cabelos oleosos",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Pampers",70,"Frauda M",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Esmalte",15,"Rosa",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Pantene",30,"Condicionador",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Xarope",50,"Infantil",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Dorflex",6,"Adulto",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Tipoia",50,"Adulto",FALSE,1);

INSERT INTO tb_farmacia(tipo, valor, função, categoria_id)
VALUES("Tinta de cabelo",15,"Cor Loiro",FALSE,1);

SELECT * FROM tb_farmacia; 

SELECT * FROM tb_farmacia WHERE valor >=5;  

SELECT * FROM tb_farmacia WHERE valor <=60;

FROM tb_farmacia
WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_farmacia
WHERE tipo LIKE "%M%";

SELECT * FROM tb_farmacia 
INNER JOIN tb_categoria
ON tb_categoria.id = tb_farmacia.categoria_id;

SELECT * FROM tb_farmacia
INNER JOIN tb_categoria
ON tb_categoria.id = tb_farmacia.categoria_id
WHERE nome_categoria LIKE "%doce%";

SELECT * FROM tb_farmacia
INNER JOIN tb_categoria
ON tb_categoria.id = tb_farmacia.categoria_id
WHERE tb_categoria.id = 3;






CREATE DATABASE db_pizZeh;

USE db_pizZeh;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT, 
nome_categoria VARCHAR(255),
tamanho CHAR,

PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
valor INT,
acompanhamento VARCHAR(255),
borda_recheada BOOLEAN,
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)

);

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Salgada","B");

INSERT INTO tb_categoria (nome_cateroria,tamanho)
VALUES("Salgada","P");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Salgada","M");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Salgada","G");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Doce","B");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Doce","P");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Doce","M");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Doce","G");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Vegetariana","B");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Vegetariana","P");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Vegetariana","M");

INSERT INTO tb_categoria(nome_cateroria,tamanho)
VALUES("Vegetariana","G");

SELECT * FROM tb_categoria;

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Mussarela",60,"Refrigerante de Guaraná",FALSE,1);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Calabresa",70,"Coca cola",TRUE,2);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Frango com catupiry",50,"suco",FALSE,3);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Chocolate",60,"Água",TRUE,4);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Prestigio",75,"Fanta laranja",FALSE,5);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Escarola",68,"Refrigerante de Guaraná",TRUE,6);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Marguerita",70,"Fanta uva",FALSE,7);

INSERT INTO tb_pizzas(sabor, valor, acompanhamento, borda_recheada, categoria_id)
VALUES("Brocolis",70,"Soda",TRUE,8);

SELECT * FROM tb_pizzas; 

SELECT * FROM tb_pizzas WHERE valor >=45;  

SELECT * FROM tb_pizzas WHERE valor <=45;

FROM tb_pizzas
WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas
WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizzas.categoria_id
WHERE nome_categoria LIKE "%doce%";

SELECT * FROM tb_pizzas 
INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizzas.categoria_id
WHERE tb_categoria.id = 3;