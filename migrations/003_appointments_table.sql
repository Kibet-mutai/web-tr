CREATE TABLE appointments(
    id SERIAL PRIMARY KEY,
    service_id INT,
    app_date DATE NOT NULL DEFAULT CURRENT_DATE,
    start_at TIME NOT NULL,
    end_at TIME NOT NULL,
    guests INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    completed BOOLEAN NOT NULL,
    CONSTRAINT fk_service
       FOREIGN KEY(service_id)
            REFERENCES services(id)
            ON DELETE CASCADE
);
