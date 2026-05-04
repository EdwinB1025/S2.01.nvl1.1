CREATE TABLE IF NOT EXISTS suppliers(
    supplier_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    fax_number VARCHAR(15) NULL DEFAULT NULL,
    nif CHAR(9) NOT NULL UNIQUE, 
    PRIMARY KEY(supplier_id),
    INDEX idx_name (name ASC),
    INDEX idx_nif (nif DESC)
    );

INSERT INTO suppliers(name, address, phone_number, fax_number, nif)
    VALUES 
        ROW('Luxottica Spain','Calle Mayor 12, Madrid','+34 910 123 456','+34 910 123 457','A1234567B'),
        ROW('Safilo Group','Avenida Diagonal 45, Barcelona','+34 932 456 789',NULL,'B2345678C'),
        ROW('Marcolin Iberia','Calle Serrano 8, Madrid','+34 915 678 901','+34 915 678 902','C3456789D'),
        ROW('Indo Optical','Calle Aragón 123, Barcelona','+34 934 567 890',NULL,'D4567890E'),
        ROW('Transitions Optical','Gran Vía 56, Bilbao','+34 944 678 901', NULL,'E5678901F'),
        ROW('Essilor España','Calle Velázquez 34, Madrid','+34 917 890 123','+34 917 890 124','F6789012G');

        