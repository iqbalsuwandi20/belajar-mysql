# Invalid Update
start transaction;

update accounts set name = null
where id = "iqbal";

commit;

select * from accounts;