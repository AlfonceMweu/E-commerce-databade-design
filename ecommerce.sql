CREATE TABLE brand (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL);

CREATE TABLE product_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (category_id) REFERENCES product_category(id));

CREATE TABLE product_image (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  image_url VARCHAR(255),
  FOREIGN KEY (product_id) REFERENCES product(id));

CREATE TABLE color (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  hex_code VARCHAR(7));

CREATE TABLE size_category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL);

CREATE TABLE size_option (
  id INT AUTO_INCREMENT PRIMARY KEY,
  size_category_id INT,
  label VARCHAR(20) NOT NULL,
  FOREIGN KEY (size_category_id) REFERENCES size_category(id));

CREATE TABLE product_item (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  color_id INT,
  size_option_id INT,
  sku VARCHAR(50),
  price DECIMAL(10,2),
  stock INT,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (color_id) REFERENCES color(id),
  FOREIGN KEY (size_option_id) REFERENCES size_option(id));

CREATE TABLE attribute_type (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL);

CREATE TABLE attribute_category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL);

CREATE TABLE product_attribute (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  attribute_type_id INT,
  attribute_category_id INT,
  name VARCHAR(100),
  value VARCHAR(255),
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id),
  FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id));

INSERT INTO brand (name) VALUES ('apple'), ('Samsung');
INSERT INTO product_category (name) VALUES ('phones'),('Electronics');
INSERT INTO product (name, brand_id, category_id, base_price, description) VALUES ('iPhone 14', 3, 2, 799.99, 'Latest Apple smartphone'),('Galaxy S21', 2, 2, 799.99, 'Latest Samsung smartphone');
INSERT INTO color (name, hex_code) VALUES ('Red', '#FF0000'),('Blue', '#0000FF');
INSERT INTO size_category (name) VALUES ('Clothing Size');
INSERT INTO size_option (size_category_id, label) VALUES (1, 'S'),(1, 'M'),(1, 'L');
INSERT INTO product_item (product_id, color_id, size_option_id, sku, price, stock) VALUES (1, 1, NULL, 'APPLE-IP14-RED', 799.99, 50),(1, 2, NULL, 'APPLE-IP14-BLU', 799.99, 30);
INSERT INTO attribute_type (name) VALUES ('Text'),('Number'),('Boolean');
INSERT INTO attribute_category (name) VALUES ('Physical'),('Technical');
INSERT INTO product_attribute (product_id, attribute_type_id, attribute_category_id, name, value) VALUES (1, 1, 1, 'Material', 'Glass'),(2, 2, 2, 'Battery Life', '24');
INSERT INTO product_image (product_id, image_url) VALUES (1, 'https://unsplash.com/photos/iphone-14-pro-max-on-table-MagW3QkXJ5s'),(2, 'https://unsplash.com/photos/a-cell-phone-is-flying-through-the-air-m82jt07HZEg');
