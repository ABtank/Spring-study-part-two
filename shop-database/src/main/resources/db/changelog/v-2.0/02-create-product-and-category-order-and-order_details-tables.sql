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

    CREATE TABLE orders (
        id bigserial not null,
        user_id bigserial not null,
        order_date date not null,
       PRIMARY KEY (id)
    );
GO

    CREATE TABLE order_details (
        id bigserial not null,
        order_item_id bigserial not null,
        price real not null,
        discount real,
        PRIMARY KEY (id)
    );
GO

    CREATE TABLE order_items (
        id bigserial not null,
        order_id bigserial not null,
        product_id bigserial not null,
        count int not null,
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

    ALTER TABLE order_details
        ADD CONSTRAINT fk_order_details_products
            FOREIGN KEY (order_item_id)
                REFERENCES order_items(id);
GO

    ALTER TABLE order_items
        ADD CONSTRAINT fk_order_items_orders
            FOREIGN KEY (order_id)
                REFERENCES orders(id);
GO

    ALTER TABLE order_items
        ADD CONSTRAINT fk_order_items_products
            FOREIGN KEY (product_id)
                REFERENCES products(id);
GO

    ALTER TABLE orders
        ADD CONSTRAINT fk_orders_users
            FOREIGN KEY (user_id)
                REFERENCES users(id);
GO
