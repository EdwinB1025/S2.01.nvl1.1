CREATE TABLE IF NOT EXISTS clients(
    client_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    create_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    referred_id MEDIUMINT UNSIGNED NULL DEFAULT NULL,
    PRIMARY KEY (client_id),
    CONSTRAINT fk_refered
        FOREIGN KEY (referred_id)
        REFERENCES clients (client_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES ('Carlos García',    'Calle Mayor 12, Barcelona',       '+34 612 345 678', 'carlos.garcia@email.com',   '2023-01-15', NULL);

INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES ('María López',      'Avenida Diagonal 45, Barcelona',  '+34 623 456 789', 'maria.lopez@email.com',     '2023-03-22', 1);
    
        
INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES ('Juan Martínez',    'Calle Aragón 78, Barcelona',      '+34 634 567 890', 'juan.martinez@email.com', NULL, 1);

        
INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES ('Ana Fernández',    'Paseo de Gracia 34, Barcelona',   '+34 645 678 901', 'ana.fernandez@email.com',   '2023-07-18', 2);

        
INSERT INTO clients(name, address, phone_number, email, referred_id)
    VALUES ('Pedro Sánchez',    'Calle Balmes 56, Barcelona',      '+34 656 789 012', 'pedro.sanchez@email.com', NULL);

        
INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES ('Laura Rodríguez',  'Gran Vía 90, Barcelona',          '+34 667 890 123', 'laura.rodriguez@email.com', '2023-11-30', 3);

-- Probando constraint: cliente inexistente

INSERT INTO clients(name, address, phone_number, email, create_date, referred_id)
    VALUES
        ROW('Laura Bejarano',  'Gran Vía 90, Barcelona',          '+34 667 890 123', 'laura.rodriguez@email.com', '2023-11-30', 20);