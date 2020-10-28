create table pictures_data (
    id bigserial not null ,
    data bytea NOT NULL,
    primary key (id)
);
GO

CREATE TABLE pictures (
  id bigserial NOT NULL,
  content_type varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  picture_data_id bigint NOT NULL,
  PRIMARY KEY (id)
);
GO

CREATE TABLE products_pictures (
  product_id bigint NOT NULL,
  picture_id bigint NOT NULL,
  PRIMARY KEY (product_id,picture_id)
);
GO

ALTER TABLE pictures
    ADD CONSTRAINT UK_ehsu2tyinopypjox1ijxt3g3c
        UNIQUE (picture_data_id);
GO

ALTER TABLE pictures
    ADD CONSTRAINT FKe9cv52k04xoy6cj8xy308gnw3
        FOREIGN KEY (picture_data_id)
            REFERENCES pictures_data (id);
GO

ALTER TABLE products_pictures
    ADD CONSTRAINT FKh3amnci4cl7xcl1al140xw79e
        FOREIGN KEY (product_id)
            REFERENCES products (id);
GO

ALTER TABLE products_pictures
    ADD CONSTRAINT FKloucf8ggy74nmdej2jmvttvi4
        FOREIGN KEY (picture_id)
            REFERENCES pictures (id);
GO