create table if not exists permission
(
    id bigserial constraint pk_permission primary key ,
    version int not null,
    created_at        timestamp,
    updated_at        timestamp
);

alter table permission
    add column name text not null;

       insert into permission(name, version, created_at, updated_at)
        values ('WRITE', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
        ('READ', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
        ('ADMINISTRATION', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

        create table if not exists role_permission
        (
        role_id       bigint not null,
        permission_id bigint not null,
        unique (role_id, permission_id)
        );

        alter table role_permission
        add constraint role_to_permission_to_role_fk foreign key (role_id) references role (id);
        alter table role_permission
        add constraint role_to_permission_to_permission_fk foreign key (permission_id) references permission (id);

        insert into role_permission(role_id, permission_id)
        values (1, 2),
        (2, 2),
        (2, 1)
        on conflict do nothing;