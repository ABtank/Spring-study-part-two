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

    DROP TABLE IF EXISTS categories;
GO

    DROP TABLE IF EXISTS brands;
GO

    DROP TABLE IF EXISTS products;
GO
