\c textbooks_db

DROP TABLE IF EXISTS cart CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_digest VARCHAR(255)
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category VARCHAR(255),
    img_url TEXT NOT NULL
);

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    title VARCHAR(255),
    author VARCHAR(255),
    price INTEGER,
    rating INTEGER,
    img TEXT,
    category_id INTEGER REFERENCES categories(id)

);

CREATE TABLE cart(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER
);