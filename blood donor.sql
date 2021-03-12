drop table area;
drop table hospital;
drop table donar;

create table donar (
    donor_id varchar(20),
    name varchar(30),
    phone number(20),
    blood_group varchar(10),
    area varchar(20),
    primary key(donor_id)
);

INSERT INTO donar VALUES('di1000','abid',016234789, 'ab+','comilla');

create table hospital(
    donor_id varchar(20),
    hospital_name varchar(30),
    FOREIGN KEY(donor_id) REFERENCES donar(donor_id) ON DELETE CASCADE
);

INSERT INTO hospital VALUES('di1000','moon hospital');

create table area(
    donor_id varchar(20),
    areaname varchar(30),
    bloodgroup varchar(10),
    FOREIGN KEY(donor_id) REFERENCES donar(donor_id) ON DELETE CASCADE
);

INSERT INTO area VALUES('di1000', 'comilla', 'ab+');