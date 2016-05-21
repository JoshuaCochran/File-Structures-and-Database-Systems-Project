CREATE SCHEMA cs332f9;

CREATE TABLE cs332f9.professors (
    SSN INTEGER(9) UNSIGNED PRIMARY KEY,
    NAME VARCHAR(70),
    SEX CHAR(1),
    TITLE VARCHAR(4),
    SALARY INTEGER UNSIGNED,
    AREA_CODE INTEGER(3) UNSIGNED,
    Telephone INTEGER(7) UNSIGNED,
    STREET_ADD VARCHAR(80),
    CITY VARCHAR(30),
    STATE CHAR(2),
    ZIP INTEGER(5) UNSIGNED,
    CONSTRAINT CheckSSN CHECK (SSN > 99999999),
    CONSTRAINT CheckAREA_CODE CHECK (AREA_CODE > 99),
    CONSTRAINT CheckTelphone CHECK (TELEPHONE > 999999),
    CONSTRAINT CheckZIP CHECK (ZIP > 9999)
);

CREATE TABLE cs332f9.department (
    DNO SMALLINT(3) UNSIGNED PRIMARY KEY,
    NAME CHAR(4),
    LOCATION VARCHAR(80),
	AREA_CODE SMALLINT(3) UNSIGNED,
    TELEPHONE INTEGER(7) UNSIGNED,
    CHAIR_SSN INTEGER(9) UNSIGNED,
    CONSTRAINT CheckSSN CHECK (SSN > 99999999),
	CONSTRAINT CheckAREACODE CHECK (AREA_CODE > 99),
    CONSTRAINT CheckTELEPHONE CHECK (TELEPHONE > 999999),
    FOREIGN KEY (CHAIR_SSN)
        REFERENCES professors (SSN)
);

CREATE TABLE cs332f9.students (
    CWID INTEGER(9) UNSIGNED PRIMARY KEY,
    Address varchar(80),
    CITY VARCHAR(30),
    STATE CHAR(2),
    ZIP INTEGER(5) UNSIGNED,
    AREA_CODE SMALLINT(3) UNSIGNED,
    telephone INTEGER(7) UNSIGNED,
    first_name varchar(35),
    last_name varchar(35),
    major_id SMALLINT(3) UNSIGNED,  
    CONSTRAINT CheckCWID CHECK (CWID > 9999999),
    CONSTRAINT CheckAREACODE CHECK (AREA_CODE > 99),
    CONSTRAINT CheckTELEPHONE CHECK (TELEPHONE > 999999),
    CONSTRAINT CheckZIP CHECK (ZIP > 9999),
    FOREIGN KEY (major_id)
        REFERENCES department (DNO)
);

CREATE TABLE cs332f9.minor (
    CWID INTEGER(9) UNSIGNED,
    DNO SMALLINT(3) UNSIGNED,
    CONSTRAINT CheckCWID CHECK (CWID > 9999999),
    FOREIGN KEY (CWID)
        REFERENCES students (CWID),
    FOREIGN KEY (DNO)
        REFERENCES department (DNO),
    PRIMARY KEY (CWID , DNO)
);

CREATE TABLE cs332f9.degrees (
    degree CHAR(70),
    prof_SSN INTEGER(9) UNSIGNED,
    CONSTRAINT CheckSSN CHECK (SSN > 99999999),
    FOREIGN KEY (prof_SSN)
        REFERENCES professors (SSN),
    PRIMARY KEY (degree , prof_SSN)
);

CREATE TABLE cs332f9.course (
    CRN MEDIUMINT(5) UNSIGNED PRIMARY KEY,
    title varchar(70),
    units TINYINT(1) UNSIGNED,
    textbook varchar(140),
    DNO SMALLINT(3) UNSIGNED,
    CONSTRAINT CheckCRN CHECK (CRN > 9999),
    FOREIGN KEY (DNO)
        REFERENCES department (DNO)
);

CREATE TABLE cs332f9.prereq (
    course_CRN MEDIUMINT(5) UNSIGNED,
    prereq_CRN MEDIUMINT(5) UNSIGNED,
	CONSTRAINT CheckCCRN CHECK (course_CRN > 9999),
	CONSTRAINT CheckPCRN CHECK (prereq_CRN > 9999),
    FOREIGN KEY (course_CRN)
        REFERENCES course (CRN),
    FOREIGN KEY (prereq_CRN)
        REFERENCES course (CRN),
    PRIMARY KEY (course_CRN , prereq_CRN)
);

CREATE TABLE cs332f9.section (
    SNO TINYINT(2) UNSIGNED,
    CRN MEDIUMINT(5) UNSIGNED,
    seats TINYINT(2),
    classroom varchar(10),
    meet_days varchar(20),
    start_time TIME,
    end_time TIME,
    prof_ssn INTEGER(9) UNSIGNED,
    CONSTRAINT CheckSSN CHECK (prof_ssn > 99999999),
	CONSTRAINT CheckCRN CHECK (CRN > 9999),
    FOREIGN KEY (CRN)
        REFERENCES course (CRN),
    FOREIGN KEY (prof_ssn)
        REFERENCES professors (SSN),
    PRIMARY KEY (SNO , CRN)
);

CREATE TABLE cs332f9.enrollment_record (
    student_CWID INTEGER(9) UNSIGNED,
    SNO TINYINT(2) UNSIGNED,
    CRN MEDIUMINT(5) UNSIGNED,
    grade char(2),
    CONSTRAINT CheckCWID CHECK (CWID > 9999999),
	CONSTRAINT CheckCRN CHECK (CRN > 9999),
    FOREIGN KEY (student_CWID)
        REFERENCES students (CWID),
    FOREIGN KEY (SNO , CRN)
        REFERENCES section (SNO , CRN),
    PRIMARY KEY (student_CWID , SNO , CRN)
);