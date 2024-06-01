create table category
(
    id varchar(100) not null,
    name varchar(100) not null,
    primary key (id)
) engine = innodb;

show tables;

alter table notification
    add column category_id varchar(100);

des notification;

alter table notification
    add constraint fk_notification_category
        foreign key (category_id) references category(id);

desc notification;

select * from notification;

insert into category(id, name) values("INFO", "info");

insert into category(id, name) values("PROMO", "promo");

select * from category;

update notification
    set category_id = "INFO"
        where id = 1;

update notification
    set category_id = "PROMO"
        where id = 2;

update notification
    set category_id = "INFO"
        where id = 3;

select * from notification;


select *
    from notification
        n join category c on (n.category_id = c.id);

select *
    from notification
        n join category c on (n.category_id = c.id)
            where (n.user_id = "iqbal" or n.user_id is null)
                order by n.create_at desc;

select *
    from notification
        n join category c on (n.category_id = c.id)
            where (n.user_id = "iqbal" or n.user_id is null)
                and c.id = "PROMO"
                    order by n.create_at desc;
    
select *
    from notification
        n join category c on (n.category_id = c.id)
            where (n.user_id = "iqbal" or n.user_id is null)
                and c.id = "INFO"
                    order by n.create_at desc;