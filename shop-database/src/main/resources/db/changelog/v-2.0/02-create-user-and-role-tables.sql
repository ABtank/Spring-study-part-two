    create table roles (
       id bigserial not null ,
        name varchar(255) not null,
        primary key (id)
    );
GO

    create table users (
       id bigserial not null ,
       login varchar(32) not null,
        age integer,
        email varchar(255),
        first_name varchar(32),
        last_name varchar(32),
        password varchar(128) not null,
        primary key (id)
    );
GO

    create table users_roles (
       user_id bigserial not null,
        role_id bigserial not null,
        primary key (user_id, role_id)
    );
GO

    alter table roles
       add constraint UK_ofx66keruapi6vyqpv6f2or37 unique (name);
GO

    alter table users_roles
       add constraint FKj6m8fwv7oqv74fcehir1a9ffy
       foreign key (role_id)
       references roles (id);
GO

    alter table users_roles
       add constraint FK2o0jvgh89lemvvo17cbqvdxaa
       foreign key (user_id)
       references users (id);
GO
