    ALTER TABLE IF EXISTS categories
       drop constraint if exists UK_category;
GO

    ALTER TABLE IF EXISTS products
        drop constraint if exists UK_product;
GO

    ALTER TABLE IF EXISTS  products
       drop constraint if exists fk_products_categories;
GO

    ALTER TABLE IF EXISTS  products
        drop constraint if exists fk_products_brands;
GO

    ALTER TABLE IF EXISTS order_details
       drop constraint if exists fk_order_details_products;
GO

    ALTER TABLE IF EXISTS order_items
        drop constraint if exists fk_order_items_orders;
GO

    ALTER TABLE IF EXISTS order_items
        drop constraint if exists fk_order_items_products;
GO

    ALTER TABLE IF EXISTS orders
        drop constraint if exists fk_orders_users;
GO

    DROP TABLE IF EXISTS categories;
GO

    DROP TABLE IF EXISTS brands;
GO

    DROP TABLE IF EXISTS products;
GO

    DROP TABLE IF EXISTS orders;
GO

    DROP TABLE IF EXISTS order_details;
GO

    DROP TABLE IF EXISTS order_items;
GO
