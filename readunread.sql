create table notification_read
(
    id int not null auto_increment,
    is_read boolean not null,
    notification_id int not null,
    user_id varchar(100) not null,
    primary key (id)
) engine = innodb;

show tables;

alter table notification_read
    add constraint fk_notification_read_notification
        foreign key (notification_id) references notification (id);

alter table notification_read
    add constraint fk_notification_read_user
        foreign key (user_id) references user (id);

desc notification_read;

select * from notification;

insert into notification_read(is_read, notification_id, user_id)
    values(true, 2, "iqbal");

insert into notification_read(is_read, notification_id, user_id)
    values(true, 2, "codet");

select * from notification_read;

select * from notification n
    join category c on (n.category_id = c.id)
    left join notification_read nr on (nr.notification_id = n.id)
        where (n.user_id = "iqbal" or n.user_id is null)
        and (nr.user_id = "iqbal" or nr.user_id is null)
            order by n.create_at desc;

insert into notification(title, detail, category_id, user_id, create_at)
    values("Contoh Pesanan Lagi", "Detail Pesanan Lagi", "INFO", "iqbal", current_timestamp());

insert into notification(title, detail, category_id, user_id, create_at)
    values("Contoh Promo Lagi", "Detail Promo Lagi", "PROMO", null, current_timestamp());

select * from notification n
    join category c on (n.category_id = c.id)
    left join notification_read nr on (nr.notification_id = n.id)
        where (n.user_id = "iqbal" or n.user_id is null)
        and (nr.user_id = "iqbal" or nr.user_id is null)
            order by n.create_at desc;