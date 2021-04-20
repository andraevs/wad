create table address
(
    id   bigint       not null
        primary key,
    city varchar(255) null
);

create table student
(
    id         bigint       not null
        primary key,
    name       varchar(255) null,
    address_id bigint       null,
    constraint FKcaf6ht0hfw93lwc13ny0sdmvo
        foreign key (address_id) references address (id)
);

create table card
(
    id         bigint       not null
        primary key,
    iban       varchar(255) null,
    student_id bigint       null,
    constraint FK8hto5bk6uuwe5kmyjcd5fw2a8
        foreign key (student_id) references student (id)
);

create table faculty
(
    id         bigint       not null
        primary key,
    founded_in date         null,
    name       varchar(255) null
);

create table faculty_student
(
    faculty_id bigint not null,
    student_id bigint not null,
    primary key (faculty_id, student_id),
    constraint FK48uqfiyto4on19d9nogor5suu
        foreign key (faculty_id) references faculty (id),
    constraint FK99nr3yjy7xqa30ai52fqnldbl
        foreign key (student_id) references student (id)
);

create table hibernate_sequence
(
    next_val bigint null
);

