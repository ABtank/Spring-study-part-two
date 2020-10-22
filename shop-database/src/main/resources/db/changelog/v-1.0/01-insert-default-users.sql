INSERT INTO users (name, password)
VALUES   ('admin', '$2y$12$d0htB/2JggytgzrPZzBU1u4UYiqO.gqAuFu0L7ZyGreX.l9WtvomW'),
        ('guest', '$2y$12$d0htB/2JggytgzrPZzBU1u4UYiqO.gqAuFu0L7ZyGreX.l9WtvomW');
GO

INSERT INTO roles (name)
VALUES ('ROLE_ADMIN'),
       ('ROLE_GUEST');
GO

INSERT INTO users_roles (user_id, role_id)
SELECT (SELECT id FROM users WHERE name = 'admin'),
       (SELECT id FROM roles WHERE name = 'ROLE_ADMIN')
UNION ALL
SELECT (SELECT id FROM users WHERE name = 'guest'),
       (SELECT id FROM roles WHERE name = 'ROLE_GUEST');
GO
