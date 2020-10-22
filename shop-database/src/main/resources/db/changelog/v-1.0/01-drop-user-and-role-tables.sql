    alter table if exists roles
       drop constraint if exists UK_ofx66keruapi6vyqpv6f2or37;
GO

    alter table if exists users_roles
       drop constraint if exists FKj6m8fwv7oqv74fcehir1a9ffy;
GO

    alter table if exists users_roles
       drop constraint if exists FK2o0jvgh89lemvvo17cbqvdxaa;
GO

    drop table if exists roles;
GO

    drop table if exists users;
GO

    drop table if exists users_roles;
GO
