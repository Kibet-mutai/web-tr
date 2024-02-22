CREATE TABLE categories (
id SERIAL PRIMARY KEY,
cat_name VARCHAR(50) NOT NULL
);



CREATE TABLE services (
id SERIAL PRIMARY KEY,
title VARCHAR(50) NOT NULL,
category_id INT NOT NULL,
description TEXT NOT NULL,
image VARCHAR(250),
CONSTRAINT fk_category
   FOREIGN KEY(category_id)
        REFERENCES categories(id)
        ON DELETE CASCADE
    );
