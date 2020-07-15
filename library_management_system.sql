DROP TABLE employee;
DROP TABLE orders;
DROP TABLE bookreturn;
DROP TABLE booklend;
DROP TABLE addbook;
DROP TABLE addmember;
DROP TABLE author;

CREATE TABLE author(
    author_id VARCHAR(30),
    name VARCHAR(30),
    addres VARCHAR(50),
    dob DATE,
    phone NUMBER(20),
    gender VARCHAR(15),
    PRIMARY KEY (author_id)
);

INSERT INTO author VALUES('at1000','rashed','cumilla','19-sep-1997',1234, 'male');

CREATE TABLE addbook(
    book_id VARCHAR(20) not null,
    nam VARCHAR(30),
    book_code VARCHAR(30),
    dat DATE,
    category VARCHAR(30),
    book_type VARCHAR(30),
    author VARCHAR(30),
    price NUMBER(30),
    PRIMARY key (book_id),
    FOREIGN KEY (author) REFERENCES author(author_id)
);

INSERT INTO addbook VALUES('bi1000','database','cse-123','15-jul-2020','language','borrow/online','at1000',130);

CREATE TABLE employee(
    emp_id VARCHAR(30) not null,
    emp_name VARCHAR(40),
    emp_num NUMBER(15),
    emp_add VARCHAR(50),
    emp_typ VARCHAR(20),
    emp_salary NUMBER(30),
    dob DATE,
    stats VARCHAR(20),
    PRIMARY KEY (emp_id)
);

INSERT INTO employee VALUES('em1000','rahat',16124578,'cumilla','manager',20000,'19-sep-1997','active');

CREATE TABLE addmember(
    mid VARCHAR(20) not null,
    nam VARCHAR(30),
    student_id NUMBER(30),
    birthday DATE,
    gender VARCHAR(30),
    addres VARCHAR(50),
    email VARCHAR(20),
    contact NUMBER(15),
    typ VARCHAR(30),
    PRIMARY KEY (mid)
);

INSERT INTO addmember VALUES ('mi1000','saad','182152122','19-jul-1997','male','dhaka','saad@gmail.com',016612798,'student');

CREATE TABLE booklend(
    record_no VARCHAR(30) not null,
    member_id VARCHAR(30),
    book_id VARCHAR(30),
    issue_date DATE,
    return_date DATE,
    PRIMARY KEY (record_no),
    FOREIGN KEY (member_id) REFERENCES addmember(mid) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES addbook(book_id) ON DELETE CASCADE
);

INSERT INTO booklend VALUES ('rn1000','mi1000','bi1000','15-jul-2020','25-jul-2020');

CREATE TABLE bookreturn(
    bid VARCHAR(30),
    member_id VARCHAR(30),
    late_days NUMBER(30),
    fine NUMBER(30),
    FOREIGN KEY (member_id) REFERENCES addmember(mid) ON DELETE CASCADE,
    FOREIGN KEY (bid) REFERENCES addbook(book_id) ON DELETE CASCADE
);

INSERT INTO bookreturn VALUES('bi1000','mi1000',0,0);

CREATE TABLE orders(
    order_no VARCHAR(30) not null,
    Book_id VARCHAR(30),
    cus_nam VARCHAR(30),
    cus_number NUMBER(15) not null,
    customer_add VARCHAR(30) not null,
    quan NUMBER(10) not null,
    PRIMARY KEY (order_no),
    FOREIGN KEY (Book_id) REFERENCES addbook(book_id) ON DELETE CASCADE
);

INSERT INTO orders VALUES('or1000','bi1000','tomal',1623789,'542',2);


