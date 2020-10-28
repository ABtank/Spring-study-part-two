    CREATE TABLE categories (
       id bigserial not null ,
        name varchar(255) not null,
        description text,
       PRIMARY KEY (id)
    );
GO

    CREATE TABLE brands (
        id bigserial not null ,
         name varchar(32) not null,
         description text,
        PRIMARY KEY (id)
    );
GO

    CREATE TABLE products (
       id bigserial not null ,
        name varchar(32) not null,
        category_id bigserial not null ,
        brand_id bigserial not null ,
        price real not null ,
        rating smallint,
        discount real,
        novelty smallint not null,
       PRIMARY KEY (id)
    );
GO

    ALTER TABLE categories
       ADD CONSTRAINT UK_category UNIQUE (name);
GO

    ALTER TABLE products
        ADD CONSTRAINT UK_product UNIQUE (name);
GO

    ALTER TABLE products
        ADD CONSTRAINT fk_products_categories
            FOREIGN KEY (category_id)
                REFERENCES categories(id);
GO

    ALTER TABLE products
        ADD CONSTRAINT fk_products_brands
            FOREIGN KEY (brand_id)
                REFERENCES brands(id);
GO

