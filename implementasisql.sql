create database belajar_mysql_multibahasa;

use belajar_mysql_multibahasa;

create table categories
(
    id varchar(100),
    position int,
    primary key(id)
) engine = InnoDB;

desc categories;

insert into categories(id, position) values ("FOOD", 1);
insert into categories(id, position) values ("GADGET", 2);
insert into categories(id, position) values ("FASHION", 3);

select * from categories order by position;

create table categories_translation
(
    category_id varchar(100) not null,
    language varchar(100) not null,
    name varchar (100) not null,
    description text,
    primary key(category_id, language)
) engine InnoDB;

desc categories_translation;

alter table categories_translation
    add constraint fk_categories_translation
        foreign key (category_id) references categories (id);

insert into categories_translation(category_id, language, name, description)
    values("FOOD", "in_ID", "Makanan", "Deskirpsi Makanan");

insert into categories_translation(category_id, language, name, description)
    values("FOOD", "en_US", "Food", "Food Description");

insert into categories_translation(category_id, language, name, description)
    values("GADGET", "in_ID", "Alat", "Deskirpsi Alat");

insert into categories_translation(category_id, language, name, description)
    values("GADGET", "en_US", "Gadget", "Gadget Description");

select * from categories
    join categories_translation ct on categories.id = ct.category_id
        where ct.language = "in_ID" order by position;

select * from categories
    join categories_translation ct on categories.id = ct.category_id
        where ct.language = "en_US" order by position;