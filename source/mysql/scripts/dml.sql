USE db_product;

INSERT INTO t_brand(id, brand_name) VALUES(1, 'Duff Beer');
INSERT INTO t_brand(id, brand_name) VALUES(2, 'Pawtucket Brewery');
INSERT INTO t_brand(id, brand_name) VALUES(3, 'Heisler Brewery');

INSERT INTO t_category(id, category_name) VALUES(1, 'Alcoholic Beverage');

INSERT INTO t_product(id, brand_id, category_id, sku) VALUES(1, 1, 1, 'Duffy Lager');
INSERT INTO t_product(id, brand_id, category_id, sku) VALUES(2, 2, 1, 'Pawtucket Patriot Ale');
INSERT INTO t_product(id, brand_id, category_id, sku) VALUES(3, 3, 1, 'Heisler Gold Ale');

INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(1, 1, 2.5, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(2, 1, 2.88, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(3, 1, 2.75, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(4, 2, 2.55, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(5, 2, 2.79, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(6, 2, 2.9, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(7, 3, 2.55, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(8, 3, 2.65, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_product_price_history(id, product_id, price, registered_at) VALUES(9, 3, 2.67, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));

INSERT INTO t_stock(id, product_id, quantity) VALUES(1, 1, 74);
INSERT INTO t_stock(id, product_id, quantity) VALUES(2, 2, 281);
INSERT INTO t_stock(id, product_id, quantity) VALUES(3, 3, 201);

INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(1, 1, 150, 'GOODS-IN', 1.75, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(2, 1, 68, 'GOODS-OUT', 2.5, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(3, 1, 76, 'GOODS-OUT', 2.5, DATE_FORMAT('2019-10-21', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(4, 1, 200, 'GOODS-IN', 2.05, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(5, 1, 34, 'GOODS-OUT', 2.88, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(6, 1, 31, 'GOODS-OUT', 2.88, DATE_FORMAT('2019-10-23', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(7, 1, 32, 'GOODS-OUT', 2.88, DATE_FORMAT('2019-10-24', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(8, 1, 125, 'GOODS-IN', 1.89, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(9, 1, 72, 'GOODS-OUT', 2.75, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));

INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(10, 2, 150, 'GOODS-IN', 1.79, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(11, 2, 95, 'GOODS-OUT', 2.55, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(12, 2, 55, 'GOODS-OUT', 2.55, DATE_FORMAT('2019-10-21', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(13, 2, 220, 'GOODS-IN', 1.84, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(14, 2, 97, 'GOODS-OUT', 2.79, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(15, 2, 110, 'GOODS-OUT', 2.79, DATE_FORMAT('2019-10-23', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(16, 2, 13, 'GOODS-OUT', 2.79, DATE_FORMAT('2019-10-24', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(17, 2, 350, 'GOODS-IN', 1.89, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(18, 2, 69, 'GOODS-OUT', 2.9, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));

INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(19, 3, 150, 'GOODS-IN', 1.78, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(20, 3, 74, 'GOODS-OUT', 2.55, DATE_FORMAT('2019-10-20', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(21, 3, 75, 'GOODS-OUT', 2.55, DATE_FORMAT('2019-10-21', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(22, 3, 250, 'GOODS-IN', 1.78, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(23, 3, 79, 'GOODS-OUT', 2.65, DATE_FORMAT('2019-10-22', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(24, 3, 71, 'GOODS-OUT', 2.65, DATE_FORMAT('2019-10-23', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(25, 3, 77, 'GOODS-OUT', 2.65, DATE_FORMAT('2019-10-24', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(26, 3, 250, 'GOODS-IN', 1.8, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
INSERT INTO t_stock_movement(id, product_id, quantity, movement, price, registered_at) VALUES(27, 3, 73, 'GOODS-OUT', 2.67, DATE_FORMAT('2019-10-25', '%Y-%m-%d'));
