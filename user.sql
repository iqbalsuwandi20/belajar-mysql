# Tabel User

entity User {
    * id varchar(100)
    --
    * name varchar(100)
}

# User

create table user (
    id varchar(100) not null,
    name varchar(100) not null,
    primary key (id)
) engine = InnoDB;

show tables;

desc user;

insert into user(id, name)
values("iqbal", "Iqbal Suwandi");

insert into user(id, name)
values("codet", "Codet Krendi");

select * from user;