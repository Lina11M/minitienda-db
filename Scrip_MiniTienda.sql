-- PROCEDIMIENTO ALMACENADO CATEGORIA
-- Insertar
DELIMITER //
CREATE PROCEDURE proInsertCategory(IN v_description VARCHAR(45))
BEGIN
    INSERT INTO tbl_categoria(cat_descripcion) VALUES(v_description);
END//
DELIMITER ;

-- Actualizar
DELIMITER //

DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE proSelectCategory()
BEGIN
	SELECT cat_id,cat_descripcion FROM tbl_categoria;
END//
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE proDeleteCategory(IN v_id INT)
BEGIN
	DELETE FROM tbl_categoria WHERE cat_id = v_id;
END//
DELIMITER ;


-- Procedimiento almacenado Proveedores
DELIMITER //

DELIMITER ;

-- Procedimiento almacenado Productos
DELIMITER //

DELIMITER ;

-- Procedimiento almacenado Usuarios
DELIMITER //

DELIMITER ;