create database bbs;

use bbs;

create table bbs 
(
	id int primary key auto_increment,#���µĽڵ�
	pid int, #���µĸ��ڵ�
	rootid int, #���µĸ��ڵ�
	name varchar(20),#����
	title varchar(255), #����
	cont text,#����
	pdate datetime,#����ʱ��
	isleaf int #1-not leaf 0-leaf 
);

insert into bbs values (null, 0, 1,'chai', 'java', 'java��ôѧ', now(), 1);
insert into bbs values (null, 1, 1,'Tom' ,'���󱻴�ſ����', '���󱻴�ſ����',now(), 1);


create table user
(
   uno int primary key auto_increment,
   uname varchar(40) unique not null,
   password varchar(20) not null,
   icon   varchar(60)
);
insert into user  values (null,'ľ����ľ��','123456','head_80.jpg');
insert into user  values (null,'ݼ������','123456','head_80.jpg');