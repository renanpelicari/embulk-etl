CREATE DATABASE db_product;

USE db_product;

CREATE TABLE t_brand(
  id INT NOT NULL,
  brand_name CHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE t_category(
  id INT NOT NULL,
  category_name CHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE t_product(
  id INT NOT NULL,
  brand_id INT NOT NULL,
  category_id INT NOT NULL,
  sku CHAR(50) NOT NULL,
  current_price FLOAT NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  INDEX idx_product_brand_id (brand_id),
  FOREIGN KEY (brand_id)
    REFERENCES t_brand(id) ON DELETE CASCADE,
  INDEX idx_product_category_id (category_id),
  FOREIGN KEY (category_id)
    REFERENCES t_category(id) ON DELETE CASCADE
);

CREATE TABLE t_product_price_history(
  id INT NOT NULL,
  product_id INT NOT NULL,
  price FLOAT NOT NULL,
  registered_at DATE NOT NULL,
  PRIMARY KEY (id),
  INDEX idx_price_hist_product_id (product_id),
  FOREIGN KEY (product_id)
    REFERENCES t_product(id) ON DELETE CASCADE
);

CREATE TABLE t_stock(
  id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INTEGER,
  PRIMARY KEY (id),
  INDEX idx_stock_product_id (product_id),
  FOREIGN KEY (product_id)
    REFERENCES t_product(id) ON DELETE CASCADE
);

CREATE TABLE t_stock_movement(
  id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INTEGER,
  movement ENUM('GOODS-IN', 'GOODS-OUT'),
  registered_at DATE NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (id),
  INDEX idx_stock_mov_product_id (product_id),
  FOREIGN KEY (product_id)
    REFERENCES t_product(id) ON DELETE CASCADE
);