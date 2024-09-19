-- PROCEDIMIENTO ALMACENADO CATEGORIA
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertCategory(IN v_description VARCHAR(45))
BEGIN
    INSERT INTO tbl_categoria(cat_descripcion) VALUES(v_description);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateCategory(IN v_id INT, IN v_description VARCHAR(45))
BEGIN 
    UPDATE tbl_categoria
    SET cat_descripcion = v_description
    WHERE cat_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectCategory()
BEGIN
	SELECT cat_id,cat_descripcion FROM tbl_categoria;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteCategory(IN v_id INT)
BEGIN
	DELETE FROM tbl_categoria WHERE cat_id = v_id;
END//
DELIMITER ;




-- PROCEDIMIENTO ALMACENADO PROVEEDORES
-- Insertar__________________________
DELIMITER //
CREATE PROCEDURE proInsertProviders(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
BEGIN
    INSERT INTO tbl_provedores(prov_nit,prov_nombre) VALUES(v_nit,v_nombre);
END//
DELIMITER ;

-- Actualizar_____________________
DELIMITER //
CREATE PROCEDURE proUpdateProviders(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
BEGIN 
    UPDATE tbl_provedores
    SET prov_nit = v_nit, prov_nombre = v_nombre
    WHERE prov_id = v_id;
END//
DELIMITER ;

-- Mostrar____________________
DELIMITER //
CREATE PROCEDURE proSelectProviders()
BEGIN
	SELECT prov_id,prov_nit,prov_nombre FROM tbl_provedores;
END//
DELIMITER ;

-- Eliminar______________________________
DELIMITER //
CREATE PROCEDURE proDeleteProviders(IN v_id INT)
BEGIN
	DELETE FROM tbl_provedores WHERE prov_id = v_id;
END//
DELIMITER ;


