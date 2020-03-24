CREATE DATABASE proyecto0;

CREATE TABLE pUsuario(
    usuario_Id INT (10) NOT NULL AUTO_INCREMENT UNIQUE KEY,
    usuario VARCHAR (25),
    contraseña VARCHAR (25),
    estado CHAR (1) DEFAULT 'A',
    PRIMARY KEY (usuario_Id)
);

INSERT INTO pUsuario (usuario, contraseña) VALUES('admin',AES_ENCRYPT('12345','mdar'));
INSERT INTO pUsuario (usuario, contraseña) VALUES('admin',AES_DECRYPT('12345','mdar'));

CREATE TABLE pRegistro(
    registro_Id INT (10) AUTO_INCREMENT NOT NULL,
    cedula varchar (10),
    primerNombre VARCHAR (25),
    segundoNombre VARCHAR (25),
    primerApellido VARCHAR (25),
    segundoApellido VARCHAR (25),
    edad INT (3),
    diaNac_Id INT (2),
    mesNac_Id INT (2),
    añoNac_Id INT (4),
    pais_Id INT (5),
    ciudad_Id INT (10),
    estado CHAR (1) DEFAULT 'A'  
);