CREATE DATABASE db_analysis;

USE db_analysis;

CREATE TABLE t_product_survey(
  id INT NOT NULL,
  brand_id INT NOT NULL,
  brand VARCHAR(30) NOT NULL,
  category_id INT NOT NULL,
  category VARCHAR(30) NOT NULL,
  product_id INT NOT NULL,
  sku VARCHAR(50) NOT NULL,
  unit_price FLOAT NOT NULL DEFAULT 0,
  created_at DATE NOT NULL,
  rating INT NOT NULL,
  comment VARCHAR(150) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE t_product_replenishment(
  id INT NOT NULL,
  brand_id INT NOT NULL,
  brand VARCHAR(30) NOT NULL,
  category_id INT NOT NULL,
  category VARCHAR(30) NOT NULL,
  product_id INT NOT NULL,
  sku VARCHAR(50) NOT NULL,
  requested_at DATE NOT NULL,
  requested_quantity INT NOT NULL,
  received_quantity INT NOT NULL,
  unit_price FLOAT NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
);

