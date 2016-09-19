
drop table tcomment;
drop table Tuser;
drop SEQUENCE SEQ_COMMENT;

create table Tuser(
  user_id varchar2(20) PRIMARY key,
  Pass varchar2(20) not null
);

create table tcomment(
  Comment_no number primary key,
  User_id varchar2(20) not null,
  Content varchar2(500) not null
  );
  
alter table tcomment add CONSTRAINT tcomment_tuser_fk
foreign key(user_id) REFERENCES Tuser(user_id);
  
create SEQUENCE SEQ_COMMENT
start with 1
increment by 1;
