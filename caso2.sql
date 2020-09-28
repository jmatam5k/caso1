CREATE DATABASE caso2;
CREATE TABLE curso(id SERIAL, nombre VARCHAR(30), PRIMARY KEY(id));
CREATE TABLE alumno(id SERIAL, nombre VARCHAR(30), rut INT, id_curso INT, PRIMARY KEY(id), FOREIGN KEY (id_curso) REFERENCES curso(id));
CREATE TABLE prueba(id SERIAL, nombre VARCHAR(30), PRIMARY KEY(id));
CREATE TABLE profesor(id SERIAL, nombre VARCHAR(30),departamento VARCHAR(20), PRIMARY KEY(id));
CREATE TABLE prueba_alumno(id SERIAL, puntaje INT, id_alumno INT, id_prueba INT, id_profesor INT, PRIMARY KEY(id),
FOREIGN KEY(id_alumno) REFERENCES alumno(id),
FOREIGN KEY(id_prueba) REFERENCES prueba(id),
FOREIGN KEY(id_profesor) REFERENCES profesor(id));