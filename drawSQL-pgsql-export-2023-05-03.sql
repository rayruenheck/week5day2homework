CREATE TABLE "tickets"(
    "ticket_id" SERIAL NOT NULL,
    "showing_time" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "date_showing" DATE NOT NULL,
    "movie_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "cost" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "tickets" ADD PRIMARY KEY("ticket_id");
CREATE TABLE "customers"(
    "customer_id" SERIAL NOT NULL,
    "payment_method" BIGINT NOT NULL,
    "total_amount_spent" BIGINT NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("customer_id");
CREATE TABLE "movies"(
    "movie_id" SERIAL NOT NULL,
    "tickets_avail" INTEGER NOT NULL,
    "showing_time" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "date_showing" DATE NOT NULL
);
ALTER TABLE
    "movies" ADD PRIMARY KEY("movie_id");
CREATE TABLE "concessions"(
    "concession_id" SERIAL NOT NULL,
    "total_sales" DECIMAL(8, 2) NOT NULL,
    "date_running" DATE NOT NULL,
    "sales_per_hour" BIGINT NOT NULL
);
ALTER TABLE
    "concessions" ADD PRIMARY KEY("concession_id");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_movie_id_foreign" FOREIGN KEY("movie_id") REFERENCES "movies"("movie_id");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_date_showing_foreign" FOREIGN KEY("date_showing") REFERENCES "movies"("date_showing");
ALTER TABLE
    "tickets" ADD CONSTRAINT "tickets_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id");
ALTER TABLE
    "movies" ADD CONSTRAINT "movies_showing_time_foreign" FOREIGN KEY("showing_time") REFERENCES "tickets"("showing_time");