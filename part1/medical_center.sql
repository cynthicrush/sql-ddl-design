DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  specialty TEXT NOT NULL
)

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  sex TEXT NOT NULL,
  birth_date TEXT NOT NULL DATE,
  disease_id INTEGER REFERENCES diseases
)

CREATE TABLE diseases(
  id SERIAL PRIMARY KEY,
  disease TEXT NOT NULL
)

CREATE TABLE visits(
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients,
  doctor_id INTEGER REFERENCES doctors,
  date TEXT NOT NULL DATE
)

CREATE TABLE diagosed(
  id SERIAL PRIMARY KEY,
  visit_id INTEGER REFERENCES visits,
  disease_id INTEGER REFERENCES diseases
)