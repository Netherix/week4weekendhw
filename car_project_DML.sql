-- Inserting data into "customer" table
INSERT INTO "customer" ("full_name", "address", "phone_num")
VALUES ('John Doe', '123 Main St', '123-456-7890'),
       ('Jane Smith', '456 Elm St', '987-654-3210');

-- Inserting data into "sales_staff" table
INSERT INTO "sales_staff" ("full_name")
VALUES ('Michael Johnson'),
       ('Emily Davis');

-- Inserting data into "service_staff" table
INSERT INTO "service_staff" ("full_name")
VALUES ('Sarah Thompson'),
       ('Robert Anderson');

-- Inserting data into "car" table
INSERT INTO "car" ("make", "model", "year")
VALUES ('Toyota', 'Camry', 2022),
       ('Honda', 'Accord', 2023);

-- Inserting data into "invoice" table
INSERT INTO "invoice" ("customer_id", "car_id", "salesperson_id")
VALUES (1, 1, 1),
       (2, 2, 2);

-- Inserting data into "service_ticket" table
INSERT INTO "service_ticket" ("service_descripiton", "service_date", "service_cost", "service_staff_id", "car_id")
VALUES ('Oil Change', '2023-05-20', 50.00, 1, 1),
       ('Tire Rotation', '2023-05-21', 30.00, 2, 2);
