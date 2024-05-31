# Transfer gagal
# User 2
start transaction;

select * from accounts where id in ("iqbal", "codet") for update;

update accounts set balance = balance - 500000
where id = "iqbal";

select * from accounts;

# di shutdown mysql

update accounts set balance = balance + 500000
where id = "codet";

commit;

select * from accounts;