INSERT INTO categories (name, description)
VALUES ('shoes', 'for legs'),
       ('cap', 'sun set'),
       ('pants', 'to large'),
       ('shirt', 'not bad');
GO

INSERT INTO brands (name, description)
VALUES ('Nikke', 'respect'),
       ('Abibas', 'so so'),
       ('Ridok', 'not good'),
       ('Pomba', 'nice brand');

INSERT INTO products (name, category_id, brand_id, price, rating, discount, novelty)
VALUES ('Nike 23', 1, 1, 235, 8, 5, 1),
       ('Guchi 48', 2, 2, 245, 8, 5, 1),
       ('Cap_43', 3, 3, 255, 8, 5, 1),
       ('T-1000', 4, 4, 265, 8, 5, 1);
GO

INSERT INTO orders (user_id, order_date)
VALUES (1, '2020.12.12'),
       (1, '2020.08.07'),
       (2, '2019.09.05'),
       (2, '2019.05.04');
GO

INSERT INTO order_items (order_id, product_id, count)
VALUES (1, 1, 2),
       (2, 2, 3),
       (3, 3, 4),
       (4, 4, 5);
GO

INSERT INTO order_details (order_item_id, price, discount)
VALUES (1, 230, 0),
       (2, 230, 10),
       (3, 250, 0),
       (4, 255, 5);
GO