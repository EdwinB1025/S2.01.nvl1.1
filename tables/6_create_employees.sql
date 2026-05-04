CREATE TABLE IF NOT EXISTS employees(
    employee_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL,
    lastname VARCHAR(15) NOT NULL,
    position ENUM('optometrist', 'sales', 'administration', 'technician') NOT NULL DEFAULT 'sales',
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    enrollment_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY(employee_id),
    INDEX idx_enrollment_date (enrollment_date ASC)
);

INSERT INTO employees(name, lastname, position, phone_number, email, enrollment_date)
    VALUES
        ROW('Carlos',  'García',    'optometrist',  '+34 611 111 111', 'carlos.garcia@optica.com',    '2020-01-15'),
        ROW('María',   'López',     'sales',        '+34 622 222 222', 'maria.lopez@optica.com',      '2020-03-22'),
        ROW('Juan',    'Martínez',  'sales',        '+34 633 333 333', 'juan.martinez@optica.com',    '2020-06-10'),
        ROW('Ana',     'Fernández', 'administration','+34 644 444 444', 'ana.fernandez@optica.com',   '2021-01-05'),
        ROW('Pedro',   'Sánchez',   'technician',   '+34 655 555 555', 'pedro.sanchez@optica.com',    '2021-04-18'),
        ROW('Laura',   'Rodríguez', 'optometrist',  '+34 666 666 666', 'laura.rodriguez@optica.com',  '2021-07-30'),
        ROW('Miguel',  'González',  'sales',        '+34 677 777 777', 'miguel.gonzalez@optica.com',  '2022-02-14'),
        ROW('David',   'Jiménez',   'technician',   '+34 699 999 999', 'david.jimenez@optica.com',    '2022-09-01'),
        ROW('Elena',   'Moreno',    'optometrist',  '+34 611 000 000', 'elena.moreno@optica.com',     '2023-01-10');

INSERT INTO employees(name, lastname, position, phone_number, email)
    VALUES
        ROW('Sara',    'Pérez',     'administration','+34 688 888 888', 'sara.perez@optica.com');
