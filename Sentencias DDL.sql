#SENTENCIAS DDL
CREATE SCHEMA IF NOT EXISTS generation_schema;
#ESTE ES UN COMENTARIO EN SQL :D#
CREATE TABLE `generation_schema`.`Articulo`(
`articulo_id` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(20) NOT NULL,
`precio` INT NOT NULL,
PRIMARY KEY (`articulo_id`));

CREATE TABLE `generation_schema`.`Cliente`(
`cliente_id` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(20) NOT NULL,
`email` VARCHAR(40) NOT NULL,
`fechaNacimiento` DATE NOT NULL,
`rut` VARCHAR(15) NOT NULL,
PRIMARY KEY(`cliente_id`));

CREATE TABLE `generation_schema`.`Historial`(
`historial_id` INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(`historial_id`));

#fk 
ALTER TABLE generation_schema.cliente ADD historial_id INT NOT NULL;
ALTER TABLE generation_schema.cliente ADD CONSTRAINT clienteHistorial foreign key (historial_id) REFERENCES generation_schema.historial(historial_id);


ALTER TABLE generation_schema.cliente DROP foreign key clienteHistorial;
ALTER TABLE generation_schema.cliente DROP column historial_id;
ALTER TABLE generation_schema.historial DROP foreign key clienteHistorial;
DROP TABLE generation_schema.historial;

ALTER TABLE generation_schema.cliente CHANGE COLUMN nombre nombre_usuario varchar(20);