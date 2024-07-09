/*creador de base de datos*/
CREATE DATABASE tb_clientes;

USE tb_clientes;

CREATE TABLE clientes(
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    ap_paterno VARCHAR(50),
    ap_materno VARCHAR(50),
    fecha_nacimiento DATE,
    correo_electronico VARCHAR(100),
    telefono VARCHAR(10)
);

INSERT INTO clientes (
    nombre, 
    ap_paterno, 
    ap_materno, 
    fecha_nacimiento, 
    correo_electronico, 
    telefono
    ) VALUES (
        'Mirian', 
        'cupul', 
        'dzul', 
        '2005-06-05', 
        'cupulmiri@gmail.com', 
        '9981870608')
);

CREATE TABLE correspondencias(
    id_correspondencias INT AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT,
    direccion VARCHAR(50),
    codigo_postal VARCHAR(50),
    referencias VARCHAR(50),
    FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes)
);

http://localhost/sm35_2024/?
nombre=dfgh
&ap_paterno=fgh
&ap_materno=fgh
&fecha_nacimiento=2024-05-04
&correo_electronico=dfghj%40gmail.com
&telefono=1234567890

// Creacion de INDEX
CREATE INDEX idx_id_cliente ON correspondencias(id_cliente)

// Crear los procesimientos almacenados para insertar en la tabla cliente

DELIMITER //
CREATE PROCEDURE insertar_cliente(
    IN nombre VARCHAR(50),
    IN ap_paterno VARCHAR(50),
    IN ap_materno VARCHAR(50),
    IN fecha_nacimiento DATE,
    IN correo_electronico VARCHAR(100),
    IN telefono VARCHAR(10)
)
BEGIN
    INSERT INTO
        clientes(
            nombre,
            ap_paterno,
            ap_materno,
            fecha_nacimiento,
            correo_electronico,
            telefono
        ) VALUE (
            nombre,
            ap_paterno,
            ap_materno,
            fecha_nacimiento,
            correo_electronico,
            telefono
        );
END //

// Crear los procesimientos almacenados para actualizar en la tabla cliente

DELIMITER //
CREATE PROCEDURE actualizar_cliente(
    IN cliente_id INT,
    IN nombre VARCHAR(50),
    IN ap_paterno VARCHAR(50),
    IN ap_materno VARCHAR(50),
    IN fecha_nacimiento DATE,
    IN correo_electronico VARCHAR(100),
    IN telefono VARCHAR(10)
)
BEGIN
    UPDATE
        clientes
    SET
        nombre = nombre,
        ap_paterno = ap_paterno,
        ap_materno = ap_materno,
        fecha_nacimiento = fecha_nacimiento,
        correo_electronico = correo_electronico,
        telefono = telefono
    WHERE
        id_cliente = cliente_id;
END //


// Crear los procesimientos almacenados para eliminar en la tabla cliente

DELIMITER //
CREATE PROCEDURE sp_eliminar_cliente(
IN cliente_id INT
)
BEGIN
DELETE FROM clientes
WHERE id_cliente = cliente_id;
END //