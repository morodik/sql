CREATE TABLE cars (
    id INTEGER PRIMARY KEY,
    brand VARCHAR(255) UNIQUE
);

CREATE TABLE car_classes (
    id INTEGER PRIMARY KEY,
    class_name VARCHAR(255) UNIQUE,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE car_usage (
    car_id INTEGER REFERENCES cars (id),
    class_id INTEGER REFERENCES car_classes (id),
    trunk_volume INTEGER NOT NULL,
    PRIMARY KEY (car_id, class_id)
);

INSERT INTO cars VALUES (1, 'Toyota');
INSERT INTO cars VALUES (2, 'Honda');

INSERT INTO car_classes VALUES (1, 'Sedan', 25000.00);
INSERT INTO car_classes VALUES (2, 'SUV', 35000.00);

INSERT INTO car_usage VALUES (1, 1, 400);
INSERT INTO car_usage VALUES (1, 2, 600);
INSERT INTO car_usage VALUES (2, 2, 550);
