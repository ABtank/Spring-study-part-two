    alter table if exists products_pictures
        drop constraint if exists FKh3amnci4cl7xcl1al140xw79e;
GO

-- сначала нужно удалить внешний ключ
    alter table if exists pictures
        drop constraint if exists FKe9cv52k04xoy6cj8xy308gnw3;
GO

-- потом уникальность, которую это внешний ключ использовал
    alter table if exists pictures
        drop constraint if exists UK_ehsu2tyinopypjox1ijxt3g3c;
GO

    alter table if exists products_pictures
        drop constraint if exists FKloucf8ggy74nmdej2jmvttvi4;
GO

    drop table if exists  pictures ;
GO

    drop table if exists  products_pictures ;
GO

    drop table if exists  pictures_data ;
GO