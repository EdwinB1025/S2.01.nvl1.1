CREATE TABLE IF NOT EXISTS sales(
    sale_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    employee_id MEDIUMINT UNSIGNED NOT NULL,
    glasses_id MEDIUMINT UNSIGNED NOT NULL,
    client_id MEDIUMINT UNSIGNED NOT NULL,
    sale_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY(sale_id),
    CONSTRAINT fk_employee_id
        FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    CONSTRAINT fk_sales_glasses_id
        FOREIGN KEY (glasses_id)
        REFERENCES glasses (glasses_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    CONSTRAINT fk_client_id
        FOREIGN KEY (client_id)
        REFERENCES clients (client_id)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
);

INSERT INTO sales(employee_id, glasses_id, client_id, sale_date)
    VALUES ROW(2, 1, 1, '2023-02-10');

INSERT INTO sales(employee_id, glasses_id, client_id, sale_date)
    VALUES ROW(3, 3, 2, '2023-04-15');

INSERT INTO sales(employee_id, glasses_id, client_id)
    VALUES ROW(7, 5, 3);