CREATE TABLE IF NOT EXISTS glasses(
    glasses_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
    brand_name VARCHAR(30) NOT NULL,
    frame ENUM('floating','acetate','metalic') NOT NULL,
    color VARCHAR(20),
    price SMALLINT NOT NULL,
    PRIMARY KEY(glasses_id)
    INDEX fk_brand_name_policy_idx (brand_name ASC) VISIBLE,
    CONSTRAINT fk_brand_name_policy
        FOREIGN KEY (brand_name)
        REFERENCES buying_policy (brand_name)
        ON DELETE RESTRICT
        ON UPDATE CASCADE)
    );

INSERT into glasses(brand_name, frame, color, price)
    VALUES
        ROW('Ray-Ban', 'acetate', 'black', 150),
        ROW('Ray-Ban', 'metalic', 'gold', 180),
        ROW('Oakley', 'floating', 'grey', 200),
        ROW('Oakley', 'metalic', 'silver', 220),
        ROW('Persol', 'acetate', 'tortoise', 250),
        ROW('Persol', 'acetate', 'brown', 230),
        ROW('Carrera', 'floating', 'black', 160),
        ROW('Carrera', 'metalic', 'gunmetal', 175),
        ROW('Polaroid', 'acetate', 'blue', 120),
        ROW('Hugo Boss', 'metalic', 'silver', 190),
        ROW('Tom Ford', 'acetate', 'black', 320),
        ROW('Guess', 'acetate', 'pink', 140),
        ROW('Indo', 'floating', 'grey', 110),
        ROW('Transitions', 'floating', 'black', 280),
        ROW('Essilor', 'floating', 'transparent', 300);

