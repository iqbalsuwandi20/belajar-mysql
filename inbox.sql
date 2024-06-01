# Tabel Inbox

entity Notification {
    * id int auto increment <<PK>>
    --
    * title varchar(255)
    * detail text
    * create_at timestamp
    --
    user_id varchar(100) <<FK>>
}

# Notification
create table notification(
    id int not null auto_increment,
    title varchar(255) not null,
    detail text not null,
    create_at timestamp not null,
    user_id varchar(100),
    primary key (id)
) engine = innodb;

alter table notification
    add constraint fk_notification_user
        foreign key (user_id) references user (id);

desc notification;

insert into notification(title, detail, create_at, user_id)
    values("Contoh Pesanan", "Detail Pesanan", current_timestamp(), "iqbal");

insert into notification(title, detail, create_at, user_id)
    values("Contoh Promo", "Detail Promo", current_timestamp(), null);

insert into notification(title, detail, create_at, user_id)
    values("Contoh Pembayaran", "Detail Pembayaran", current_timestamp(), "codet");

select * from notification;

select * 
    from notification 
        where (user_id = "iqbal" or user_id is null)
            order by create_at desc;

select * 
    from notification 
        where (user_id = "codet" or user_id is null)
            order by create_at desc;