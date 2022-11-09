INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('Celular', 150.000); #insersion de datos
INSERT INTO generation_schema.articulo (nombre, precio) VALUES ('Audifonos inalam', 5.5);
INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUES (7,'Audifonos inalam', 5.5); #elije el articulo_id para ese dato

SELECT * FROM generation_schema.articulo; #Para ver los datos

INSERT INTO generation_schema.articulo (articulo_id, nombre, precio) VALUE (7,'Audifonos inalam', 6) #busca el espacio donde estan esos datos
ON duplicate key update nombre = 'Audifonos alam'; #y aqui modifica ese espacio 

#Modificar datos
UPDATE generation_schema.articulo
SET nombre='Celular Samsung', precio = 100000
WHERE articulo_id = 3;

UPDATE generation_schema.articulo
SET nombre='Mouse', precio = 60000
WHERE articulo_id = 7;
SET SQL_SAFE_UPDATES = 0; #des activar modo niñera

UPDATE generation_schema.articulo
SET precio = 60000
WHERE precio <= 50000;

UPDATE generation_schema.articulo
SET precio = 50000
WHERE precio <= 60000 AND nombre= 'Mouse'; #puedes usar AND y OR

#Eliminar datos
DELETE FROM generation_schema.articulo
WHERE articulo_id = 7;