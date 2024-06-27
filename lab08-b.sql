create schema schema1;

create schema schema2;

set search_path = 'public';

create table t1 (x integer);


create table schema2.t2 (y integer);
set search_path = 'public';
alter table t1 set schema schema2;

create table t1 (z integer);
set search_path = 'schema1';
create table schema1.t2 (w integer);
alter table t1 set schema schema2;
create table t1 (z int);


INSERT INTO schema2.t1 (x) SELECT 10 + random() * 5 FROM generate_series(1, 5);
INSERT INTO schema2.t2 (y) SELECT 20 + random() * 5 FROM generate_series(1, 5);
INSERT INTO schema1.t1 (z) SELECT 30 + random() * 5 FROM generate_series(1, 5);
INSERT INTO schema1.t2 (w) SELECT 40 + random() * 5 FROM generate_series(1, 5);

select * from schema1;
select * from schema2;

select * from schema1.t1 union select * from schema2.t1;

set search_path = "schema1“;
select * from t1;

set search_path = “schema2“;
select * from t1;

drop Schema schema2;





