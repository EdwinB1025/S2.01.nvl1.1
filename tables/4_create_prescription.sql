CREATE TABLE IF NOT EXISTS prescription(
    prescription_id MEDIUMINT NOT NULL AUTO_INCREMENT,
    glasses_id MEDIUMINT UNSIGNED NOT NULL,
    lense_side ENUM('left', 'right') NOT NULL,
    sphere DECIMAL(4,2) NOT NULL,
    cilinder DECIMAL(3,2) NULL DEFAULT NULL,
    axis TINYINT UNSIGNED NOT NULL,
    addition DECIMAL(3,2) UNSIGNED NULL DEFAULT NULL,
    PRIMARY KEY(prescription_id),
    UNIQUE INDEX idx_lense_side (glasses_id ASC, lense_side ASC),
    CONSTRAINT fk_glasses_id
        FOREIGN KEY (glasses_id)
        REFERENCES glasses (glasses_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    );

    INSERT INTO prescription(glasses_id, lense_side, sphere, cilinder, axis, addition)
    VALUES
        ROW(1,  'left',  -2.50, -1.25, 90,  NULL),
        ROW(1,  'right', -1.75, -0.75, 180, NULL),
        ROW(2,  'left',  -1.00, NULL,  0,   NULL),
        ROW(2,  'right', -1.25, NULL,  0,   NULL),
        ROW(3,  'left',  +1.50, -0.50, 45,  +2.00),
        ROW(3,  'right', +1.75, -0.75, 60,  +2.00),
        ROW(4,  'left',  -3.00, -2.00, 90,  NULL),
        ROW(4,  'right', -3.25, -1.75, 85,  NULL),
        ROW(5,  'left',  +0.75, NULL,  0,   +1.50),
        ROW(5,  'right', +1.00, NULL,  0,   +1.50),
        ROW(6,  'left',  -4.50, -2.50, 135, NULL),
        ROW(6,  'right', -4.75, -2.25, 120, NULL),
        ROW(7,  'left',  -1.50, -0.75, 90,  NULL),
        ROW(7,  'right', -1.25, -0.50, 75,  NULL),
        ROW(8,  'left',  +2.00, NULL,  0,   +2.50),
        ROW(8,  'right', +2.25, NULL,  0,   +2.50),
        ROW(9,  'left',  -2.00, -1.00, 45,  NULL),
        ROW(9,  'right', -2.25, -1.25, 60,  NULL),
        ROW(10, 'left',  -0.50, NULL,  0,   +1.00),
        ROW(10, 'right', -0.75, NULL,  0,   +1.00),
        ROW(11, 'left',  -5.00, -2.00, 90,  NULL),
        ROW(11, 'right', -5.25, -2.25, 95,  NULL),
        ROW(12, 'left',  +1.25, -0.50, 30,  +2.00),
        ROW(12, 'right', +1.00, -0.25, 45,  +2.00),
        ROW(13, 'left',  -1.75, NULL,  0,   NULL),
        ROW(13, 'right', -2.00, NULL,  0,   NULL),
        ROW(14, 'left',  -3.50, -1.50, 90,  NULL),
        ROW(14, 'right', -3.75, -1.75, 85,  NULL);

        -- Probando restriccion 

    INSERT INTO prescription(glasses_id, lense_side, sphere, cilinder, axis, addition)
    VALUES
        ROW(15, 'left',  +0.50, NULL,  0,   +1.50),
        ROW(15, 'right', +0.75, NULL,  0,   +1.50),
        ROW(15, 'right', +0.65, NULL,  0,   +1.50);

    INSERT INTO prescription(glasses_id, lense_side, sphere, cilinder, axis, addition)
    VALUES
        ROW(15, 'left',  +0.50, NULL,  0,   +1.50),
        ROW(15, 'right', +0.65, NULL,  0,   +1.50);

