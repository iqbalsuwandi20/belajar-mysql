# SQL Transfer
# Run using multiple sessions
start transaction;

select * from accounts where id in ("iqbal", "codet") for update;

update accounts set balance = balance - 500000
where id = "iqbal";

update accounts set balance = balance + 500000
where id = "codet";

commit;

select * from accounts;

# user 2
start transaction;

select * from accounts where id in ("iqbal", "codet") for update;

update accounts set balance = balance - 500000
where id = "iqbal";

update accounts set balance = balance + 500000
where id = "codet";

commit;

select * from accounts;