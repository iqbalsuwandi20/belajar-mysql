insert into orders(
    id, created_at, seller_id, seller_name, buyer_id, buyer_name, shipping_name, 
    shipping_address, shipping_phone, logistic_id, logistic_name, payment_method_id, 
    payment_method_name, total_quantity, total_weight, total_product_amount, total_shipping_cost, 
    total_shopping_amount, service_charge, total_amount)
values("122", now(), "galery_olahraga_indonesia", "Galery Olahraga Indonesia", "iqbalsuwandi20", "Iqbal Suwandi", 
        "Krendi Codet", "Jl. Garul, Jakarta Selatan, DKI Jakarta, 4114", "081232131", "sicepat", "Sicepat Gokil", 
        "debit_online", "Debit Online", 5, 5360, 508500, 60000, 568500, 1000, 569500);


select * from orders;

insert into order_details(id, order_id, product_id,
    product_name, product_weight, product_price, quantity, 
    total_amount)
values("1", "122", "p1", "Basketball", 2300, 177900, 2, 355800);

insert into order_details(id, order_id, product_id,
    product_name, product_weight, product_price, quantity, 
    total_amount)
values("2", "122", "p2", "Basketball Warna", 500, 98900, 1, 98900);

insert into order_details(id, order_id, product_id,
    product_name, product_weight, product_price, quantity, 
    total_amount)
values("3", "122", "p3", "Pentil Pompa Bola", 54, 9900, 1, 9900);

insert into order_details(id, order_id, product_id,
    product_name, product_weight, product_price, quantity, 
    total_amount)
values("4", "122", "p4", "Pompa Bola", 198, 43900, 1, 43900);

select * from order_details;

# 2 Query
select * from orders where id = "122";

select * from order_details where id = "122";

# 1 Query
select * 
    from orders as o join order_details od on o.id = od.order_id where o.id = "122";

select * from orders where total_amount > 500000;