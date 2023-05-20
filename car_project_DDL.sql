CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "full_name" VARCHAR(150),
  "address" VARCHAR,
  "phone_num" VARCHAR(50),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "sales_staff" (
  "salesperson_id" SERIAL,
  "full_name" VARCHAR(150),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "service_staff" (
  "service_staff_id" SERIAL,
  "full_name" VARCHAR,
  PRIMARY KEY ("service_staff_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "make" VARCHAR(150),
  "model" VARCHAR(150),
  "year" INTEGER
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "salesperson_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_invoice_customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id"),
  CONSTRAINT "FK_invoice_salesperson_id"
    FOREIGN KEY ("salesperson_id")
      REFERENCES "sales_staff"("salesperson_id")
);

CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "service_descripiton" VARCHAR(150),
  "service_date" DATE,
  "service_cost" DECIMAL(10,2),
  "service_staff_id" INTEGER,
  "car_id" INTEGER,
  PRIMARY KEY ("service_ticket_id"),
  CONSTRAINT "FK_service_ticket_service_staff_id"
    FOREIGN KEY ("service_staff_id")
      REFERENCES "service_staff"("service_staff_id")
);


