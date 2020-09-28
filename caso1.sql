CREATE DATABASE caso1;
CREATE TABLE departamento(id SERIAL, nombre VARCHAR(20), PRIMARY KEY (id));
CREATE TABLE trabajador(id SERIAL, nombre VARCHAR(20), direccion VARCHAR(40), rut INT, id_departamento INT, PRIMARY KEY (id), FOREIGN KEY (id_departamento) REFERENCES departamento(id));
CREATE TABLE liquidaciones(id SERIAL, link_drive VARCHAR(120), id_trabajador INT, PRIMARY KEY (id), FOREIGN KEY (id_trabajador) REFERENCES trabajador(id));