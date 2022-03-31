create table user
(
   id_user int not null auto_increment,
   description varchar(200) not null,
   email varchar(200) not null,
   password varchar(2000),
   constraint pk_user primary key(id_user)
);


create table refresh_token
(
   token varchar(200) not null,
   id_user int not null,
   expire_date datetime not null,
   created_at datetime,
   constraint pk_refresh_token primary key(token)
);

alter table refresh_token add constraint fk_refresh_token_id_user
foreign key(id_user) references user(id_user) on delete cascade;

insert into user
(
   id_user, 
   description, 
   email
)
values(1, 'Demo', 'demo@test.com');


commit;
