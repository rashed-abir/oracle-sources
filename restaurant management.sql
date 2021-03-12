drop table orders;
drop table customer;
drop TABLE foodmenu;
drop table waiter;
drop table chef;
drop table restaurant;

create table restaurant(
    name VARCHAR(30),
    address VARCHAR(30),
    phone number(15)
);

insert into restaurant VALUES('fnf','comilla',1234567);

create table chef(
    chef_id VARCHAR(30),
    name VARCHAR(30),
    salary number(20),
    hire_date date,
    primary key(chef_id)
);

insert into chef VALUES('cf1000','babu',10000,'13-jul-2020');

create table waiter(
    waiter_id varchar(30),
    name VARCHAR(30),
    salary number(30),
    hire_date date,
    primary key(waiter_id)
);

insert into waiter VALUES('wt1000','babu',10000,'13-jul-2020');

create table foodmenu(
    food_id VARCHAR(30),
    name VARCHAR(30),
    price number(30),
    quantity number(30),
    chef_id VARCHAR(30),
    primary key(food_id),
    FOREIGN KEY(chef_id) REFERENCES chef(chef_id) on delete cascade
);

insert into foodmenu values('fi1000','coffe',100,10,'cf1000');

create table customer(
    customer_id VARCHAR(30),
    name varchar(30),
    phone number(30),
    address VARCHAR(30),
    waiter_id VARCHAR(30),
    primary key(customer_id),
    FOREIGN key(waiter_id) REFERENCES waiter(waiter_id) on delete cascade
);

insert into customer values('cs1000','rashed',123456,'cumilla','wt1000');

create table orders(
    order_id varchar(30),
    time varchar(30),
    status VARCHAR(30),
    quantity number(30),
    customer_id varchar(30),
    waiter_id varchar(30),
    food_id varchar(30),
    primary key(order_id),
    FOREIGN key (customer_id) REFERENCES customer(customer_id) on delete cascade,
    FOREIGN key(waiter_id) REFERENCES waiter(waiter_id) on delete cascade,
    FOREIGN KEY(food_id) REFERENCES foodmenu(food_id) on delete cascade
);

insert into orders values('or1000','10:00','active',2,'cs1000','wt1000','fi1000');