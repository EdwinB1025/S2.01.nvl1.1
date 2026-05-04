CREATE TABLE IF NOT EXISTS buying_policy(
    policy_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    supplier_id MEDIUMINT UNSIGNED NOT NULL,
    brand_name VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(policy_id),
    INDEX idx_brand_name (brand_name ASC),
    CONSTRAINT fk_supplier_id
        FOREIGN KEY(supplier_id)
        REFERENCES suppliers (supplier_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
    );

INSERT INTO buying_policy(supplier_id, brand_name)
    VALUES
        ROW (1, 'Ray-Ban'),
        ROW (1, 'Oakley'),
        ROW (1, 'Persol'),
        ROW (2, 'Carrera'),
        ROW (2, 'Polaroid'),
        ROW (2, 'Hugo Boss'),
        ROW (3, 'Tom Ford'),
        ROW (3, 'Guess'),
        ROW (4, 'Indo'),
        ROW (5, 'Transitions'),
        ROW (6, 'Essilor');





