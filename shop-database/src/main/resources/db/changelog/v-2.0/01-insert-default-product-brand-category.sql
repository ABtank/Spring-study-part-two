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
