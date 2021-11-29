DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  password TEXT NOT NULL
)

CREATE TABLE regions(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE posts(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  text TEXT NOT NULL,
  user_id INTEGER REFERENCES users,
  region_id INTEGER REFERENCES regions,
  category_id INTEGER REFERENCES categories,
  location TEXT NOT NULL
)

