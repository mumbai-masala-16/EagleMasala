

drop database EagleMasala if EXISTS;
create database EagleMasala;

create table customer (
id int AUTO_INCREMENT,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
telephone varchar(50),PRIMARY key(id)
);

create table user (
id int AUTO_INCREMENT,
username varchar(50),
password varchar(50),
firstname varchar(50),
lastname varchar(50),
email varchar(50),PRIMARY key(id)
);

