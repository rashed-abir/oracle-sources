drop table payroll;
drop table paygrade;
drop table employee;
drop table department;
drop table company;


CREATE TABLE company(
    companyid VARCHAR(30),
    comp_name VARCHAR(30),
    comp_address VARCHAR(50),
    contact_no NUMBER(20),
    PRIMARY KEY(companyid)
);

INSERT INTO company VALUES ('com1000','bizbond','dhaka',01629341893);

CREATE TABLE department(
    departmentid VARCHAR(30),
    dept_name VARCHAR(30),
    companyid VARCHAR(30),
    PRIMARY KEY(departmentid),
    FOREIGN KEY (companyid) REFERENCES company(companyid) ON DELETE CASCADE
);

INSERT INTO department VALUES('dep1000','cse','com1000');

CREATE TABLE paygrade(
    gradeid VARCHAR(30),
    grade_name VARCHAR(30),
    grade_bonus VARCHAR(30),
    dept_id VARCHAR(30),
    PRIMARY KEY(gradeid),
    FOREIGN KEY (dept_id) REFERENCES department(departmentid) ON DELETE CASCADE
);

INSERT INTO paygrade VALUES ('gd1000','name','2000','dep1000');

CREATE TABLE employee(
    emp_id VARCHAR(30),
    emp_name VARCHAR(30),
    emp_mobile_no NUMBER(20),
    emp_dob DATE,
    emp_doj DATE,
    emp_city VARCHAR(30),
    dept_id VARCHAR(30),
    PRIMARY KEY (emp_id),
    FOREIGN KEY(dept_id) REFERENCES department(departmentid) ON DELETE CASCADE
);

INSERT INTO employee VALUES('em1000','sajib',01623456, '19-sep-1997', '19-sep-2020', 'dhaka','dep1000');

CREATE TABLE payroll(
    transactionid VARCHAR(30),
    emp_salary_month VARCHAR(15),
    emp_salary_year NUMBER(10),
    emp_id VARCHAR(30),
    PRIMARY KEY(transactionid),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE
);