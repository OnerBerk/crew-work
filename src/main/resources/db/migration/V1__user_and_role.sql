create table if not exists role
(
    id      bigserial
        constraint pk_role primary key,
    version int  not null,
    created_at        timestamp,
    updated_at        timestamp
);

alter table role
    add column name text not null;

insert into role(name, version, created_at, updated_at)
values ('ROLE_USER', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );
insert into role(name, version, created_at, updated_at )
values ('ROLE_ADMIN', 1,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

create table if not exists crew_user
(
    id         bigserial
        constraint pk_user primary key,
    version    int       not null,
    firstname      text      not null,
    lastname      text      not null,
    email      text      not null unique,
    password   text      not null,
    status     text      not null,
    created_at timestamp not null,
    updated_at timestamp
);

create table if not exists user_role
(
    user_id bigint not null,
    role_id bigint not null,
    unique (user_id, role_id)
);

alter table user_role
    add constraint user_to_role_to_user_fk foreign key (user_id) references crew_user (id);
alter table user_role
    add constraint user_to_role_to_role_fk foreign key (role_id) references role (id);