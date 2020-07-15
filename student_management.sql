CREATE TABLE Teacher(
    Teacher_id NUMBER(12) NOT NUll,
    Name VARCHAR(30),
    Designation VARCHAR(30),
    Department VARCHAR(20),
    PhoneNumber NUMBER(15),
    PRIMARY KEY (Teacher_id)
);


CREATE TABLE Course(
    Course_id NUMBER(5) NOT NUll,
    Name VARCHAR(20) NOT NULL UNIQUE,
    Creadit NUMBER(5),
    PRIMARY KEY (Course_id)
);

CREATE TABLE Student(
    Student_id NUMBER(15) NOT NUll,
    Name VARCHAR(30),
    Year NUMBER(5),
    Department VARCHAR(20) DEFAULT 'CSE',
    CGPA VARCHAR(5),
    PRIMARY KEY (Student_id)
);

CREATE TABLE Teacher_Course(
    tid NUMBER(12) NOT NULL,
    cid NUMBER(5) NOT NULL,
    FOREIGN KEY (tid) REFERENCES Teacher (Teacher_id) ON DELETE CASCADE,
    FOREIGN KEY (cid) REFERENCES Course (Course_id) ON DELETE CASCADE
);

CREATE TABLE Student_Course(
    sid NUMBER(15) NOT NULL,
    courseid NUMBER(5) NOT NULL,
    FOREIGN KEY (sid) REFERENCES Student (Student_id) ON DELETE CASCADE,
    FOREIGN KEY (courseid) REFERENCES Course (Course_id) ON DELETE CASCADE
);

INSERT INTO Student VALUES(182152170, 'tomal', 1997,'CSE', '4.00');
INSERT INTO Student VALUES(182152112, 'sefat', 1997, 'CSE', '3.00');
INSERT INTO Student VALUES(182152139, 'parta', 1997, 'CSE', '2.00');

INSERT INTO Course VALUES(113, 'database', 199);
INSERT INTO Course VALUES(114, 'java', 5);
INSERT INTO Course VALUES(115, 'algorithm', 4);

INSERT INTO Teacher VALUES(1121,'saif sir', 'assistant', 'cse', 012356);
INSERT INTO Teacher VALUES(1122,'narayan sir', 'proffessor', 'cse', 01654);
INSERT INTO Teacher VALUES(1123,'akhther sir', 'assistant', 'cse', 01235);

INSERT INTO Teacher_Course VALUES(1121, 113);
INSERT INTO Teacher_Course VALUES(1122, 114);
INSERT INTO Teacher_Course VALUES(1123, 115);

INSERT INTO Student_Course VALUES(182152170, 113);
INSERT INTO Student_Course VALUES(182152112, 114);
INSERT INTO Student_Course VALUES(182152139, 115);




--select name from student where Department like '%GED%';

--Select Name, Department from student where CGPA<'3.00';
