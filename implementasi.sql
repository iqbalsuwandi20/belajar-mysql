create database belajar_mysql_tokopedia_order_history;

use belajar_mysql_tokopedia_order_history;

create table orders
(
    id varchar(100) primary key,
    seller_id varchar(100) not null,
    seller_name varchar(100) not null,
    buyer_id varchar(100) not null,
    buyer_name varchar(100) not null,
    shipping_name varchar(100) not null,
    shipping_address varchar(500) not null,
    shipping_phone varchar(25) not null,
    logistic_id varchar(100) not null,
    logistic_name varchar(100) not null,
    payment_method_id varchar(100) not null,
    payment_method_name varchar(100) not null,
    total_quantity int not null,
    total_weight int not null,
    total_product_amount bigint not null,
    total_shipping_cost bigint not null,
    total_shopping_amount bigint not null,
    service_charge bigint not null,
    total_amount bigint not null
) engine InnoDB;

desc orders;

create table order_details
(
    id varchar(100) primary key,
    order_id varchar(100) not null,
    product_id varchar(100) not null,
    product_name varchar(250) not null,
    product_weight int not null,
    product_price bigint not null,
    quantity int not null,
    total_amount bigint not null,
    foreign key fk_orders_to_order_details(order_id) references orders(id)
) engine InnoDB;

desc order_details;