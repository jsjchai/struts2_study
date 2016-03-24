create database bbs;

use bbs;

create table bbs 
(
	id int primary key auto_increment,#文章的节点
	pid int, #文章的父节点
	rootid int, #文章的根节点
	name varchar(20),#名字
	title varchar(255), #标题
	cont text,#内容
	pdate datetime,#发帖时间
	isleaf int #1-not leaf 0-leaf 
);

insert into bbs values (null, 0, 1,'chai', 'java', 'java怎么学', now(), 1);
insert into bbs values (null, 1, 1,'Tom' ,'大象被打趴下了', '大象被打趴下了',now(), 1);


create table user
(
   uno int primary key auto_increment,
   uname varchar(40) unique not null,
   password varchar(20) not null,
   icon   varchar(60)
);
insert into user  values (null,'木有那木简单','123456','head_80.jpg');
insert into user  values (null,'菁雅若宁','123456','head_80.jpg');