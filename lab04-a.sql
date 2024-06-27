 CREATE TABLE IF NOT EXISTS soft
 (
 id integer,
 sname varchar(50) not null,
 ver varchar(50) not null,
 quant integer not null
 );

 CREATE TABLE IF NOT EXISTS employees
 (
 id integer,
 lname varchar(50) not null,
 fname varchar(50) not null,
 mname varchar(50)
 );

 CREATE TABLE IF NOT EXISTS rooms
 (
 id integer,
 num integer not null,
 emp_id integer not null
 );

 CREATE TABLE IF NOT EXISTS pcs
 (
 id integer,
 room_id integer not null,
 note varchar(100) not null,
 ip_addr varchar(15) not null,
 mac_addr char(17) not null
 );

 CREATE TABLE IF NOT EXISTS installs
 (
 pc_id integer not null,
 soft_id integer not null
 );

