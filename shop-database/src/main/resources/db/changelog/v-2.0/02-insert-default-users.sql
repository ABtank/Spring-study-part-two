INSERT INTO users (login, age, email, first_name, last_name, password)
VALUES ('admin', 23, 'admin@email.com', 'adminiy', 'adminov',
        '$2y$12$d0htB/2JggytgzrPZzBU1u4UYiqO.gqAuFu0L7ZyGreX.l9WtvomW'),
       ('guest', 18, 'guest@email.com', 'guestik', 'guestov',
        '$2y$12$d0htB/2JggytgzrPZzBU1u4UYiqO.gqAuFu0L7ZyGreX.l9WtvomW');
GO

INSERT INTO roles (name)
VALUES ('ROLE_ADMIN'),
       ('ROLE_GUEST');
GO

INSERT INTO users_roles (user_id, role_id)
SELECT (SELECT id FROM users WHERE login = 'admin'),
       (SELECT id FROM roles WHERE name = 'ROLE_ADMIN')
UNION ALL
SELECT (SELECT id FROM users WHERE login = 'guest'),
       (SELECT id FROM roles WHERE name = 'ROLE_GUEST');
GO
