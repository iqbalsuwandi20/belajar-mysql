# Transaksi Sukses
start transaction;

insert into accounts(id, name, balance)
values("iqbal", "Iqbal Suwandi", 1000000);

insert into accounts(id, name, balance)
values("codet", "Codet Krendi", 2000000);

commit;

# user 2
use belajar_acid;

select * from accounts;

# Transaksi Rollback
start transaction;

delete from accounts where id = "iqbal";

delete from accounts where id = "codet";

select * from accounts;

Rollback;

select * from accounts;