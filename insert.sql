INSERT INTO cs332f9.professors VALUES (111111111, "Joseph Medley", 
"M", "Dr.", 100000, 714, 5821079, "12345 Fake Lane",
"Prof City", "CA", 92841);

INSERT INTO cs332f9.degrees VALUES ("Bsc in Economics", 111111111);
INSERT INTO cs332f9.degrees VALUES ("PhD in Economics", 111111111);

INSERT INTO cs332f9.professors VALUES (222222222, "Jane Eyre", "F",
"Dr.", 120000, 825, 7821054, "17851 Fake Rd.", "LA",
"CA", 90841);

INSERT INTO cs332f9.degrees VALUES ("BSc in Being Jane Eyre", 222222222);
INSERT INTO cs332f9.degrees VALUES ("PhD in Being Jane Eyre", 222222222);
INSERT INTO cs332f9.degrees VALUES ("Honorary Doctorate in Computer Science", 222222222);

INSERT INTO cs332f9.professors VALUES (333333333, "Maryam Mirzakhani",
"F", "Dr.", 150000, 714, 1023459, "35821 Math Lane",
"LA", "CA", 90016);

INSERT INTO cs332f9.degrees VALUES ("BSc in Mathematics", 333333333);
INSERT INTO cs332f9.degrees VALUES ("PhD in Mathematics", 333333333);

INSERT INTO cs332f9.department VALUES (001, "MATH", "McCarthy Hall 166", 657, 2782638, 333333333);

INSERT INTO cs332f9.department VALUES (002, "CPSC", "CS-522", 657, 2783700, 111111111);

INSERT INTO cs332f9.students VALUES (891699407, "12345 A+ STUDENT RD.", "LA", "CA", "90001",
714,8919947, "Joshua", "Cochran", 001);

INSERT INTO cs332f9.minor VALUES (891699407, 001);

INSERT INTO cs332f9.students VALUES (111111111, 
"23514 Generic Student Drive", "LA", "CA", "90001", 858,1079866, "Bob", "Doe", 002);

INSERT INTO cs332f9.students VALUES (222222222, "85451 Drive Rd.", "LA", "CA", "90001",
841,8888888, "Jane", "Smith", 001);

INSERT INTO cs332f9.students VALUES (123456789, "11432 Fake Address Lane", "LA", "CA", "90001",
714,8417169, "Bob", "Saget", 002);

INSERT INTO cs332f9.students VALUES (987654321, "99871 Something smthng", "LA", "CA", "90001",
751,8887951, "Janet", "Bridge", 002);

INSERT INTO cs332f9.students VALUES (796188953, "67518 Apple Cor.", "LA", "CA", "90001",
714,6791133, "Steve", "Jobs", 002);

INSERT INTO cs332f9.minor VALUES (796188953, 001);

INSERT INTO cs332f9.students VALUES (567156956, 
"88512 Already Out of Ideas Rd.", "LA", "CA", "90001", 714,6581784, "Isaac", "Newton",
001);

INSERT INTO cs332f9.students VALUES (345167851, "13451 Math Ave.", "LA", "CA", "90001",
714,5761356, "Carl", "Gauss", 001);

INSERT INTO cs332f9.minor VALUES (345167851, 001);

INSERT INTO cs332f9.students VALUES (157871111, "32561 Self Aware Ave.", "LA", "CA", "90001",
714,3216568, "Alan", "Turing", 002);

INSERT INTO cs332f9.minor VALUES (157871111, 001);

INSERT INTO cs332f9.students VALUES (247912445, "13569 Blah Ave.", "LA", "CA", "90001",
714,8897861, "Ed", "Norton", 002);

INSERT INTO cs332f9.course VALUES (13467, "File Structures and Database Systems", 3, 
"Fundamentals of Database Systems by Ramez Elmasri & Shamkant B. Navathe", 002);

INSERT INTO cs332f9.course VALUES (13110, "Data Structures", 3, "Introduction to Algorithms by Corment et. al.", 002);

INSERT INTO cs332f9.course VALUES (13107, "Object-oriented Programming", 3, 
"The C++ Programming Language by Bjarne Stroustrup", 002); 

INSERT INTO cs332f9.course VALUES (13106, "Introduction to Programming", 3, 
"The C++ Programming Language by Bjarne Stroustrup", 002); 

INSERT INTO cs332f9.prereq VALUES (13467, 13110);
INSERT INTO cs332f9.prereq VALUES (13110, 13107);
INSERT INTO cs332f9.prereq VALUES (13106, 13106);

INSERT INTO cs332f9.course VALUES (18982, "Advanced Calculus I", 3, "Principles of Mathematical Analysis 3e by Walter Rudin",
001);

INSERT INTO cs332f9.course VALUES (18757, "Introduction to Linear Algebra and Differential Equations",
3, "Linear Algebra Done Wrong by Sergei Treil", 001);

INSERT INTO cs332f9.course VALUES (17880, "Strategies of Proof", 3, "How to Prove It by Daniel J. Velleman", 001);

INSERT INTO cs332f9.prereq VALUES (18982, 18757);
INSERT INTO cs332f9.prereq VALUES (18982, 17880);

INSERT INTO cs332f9.section VALUES (01, 13106, 30, "E-315", "MW", '12:00:00', '12:45:00',111111111);

INSERT INTO cs332f9.section VALUES (01, 18982, 30, "MH-358", "MWF", '09:00:00', '10:15:00', 333333333);

INSERT INTO cs332f9.section VALUES (02, 18982, 30, "MH-584", "MW", '12:00:00', '1:45:00', 333333333);

INSERT INTO cs332f9.section VALUES (01, 18757, 30, "MH-231", "MW", '09:00:00', '09:50:00', 333333333);

INSERT INTO cs332f9.section VALUES (01, 17880, 30, "MH-563", "MW", '14:30:00', '15:45:00', 333333333);

INSERT INTO cs332f9.section VALUES (01, 13467, 30, "E-202", "MW", '14:30:00', '15:45:00', 111111111);

INSERT INTO cs332f9.section VALUES (02, 13467, 20, "E-205", "TTh", '09:00:00', '10:45:00', 111111111);

INSERT INTO cs332f9.section VALUES (03, 13467, 20, "E-254", "MW", '11:45:00', '13:15:00', 222222222);

INSERT INTO cs332f9.section VALUES (01, 13110, 30, "E-213", "TTh", '13:00:00', '14:30:00', 111111111);

INSERT INTO cs332f9.section VALUES (01, 13107, 30, "E-106", "TTh", '15:00:00', '16:30:00', 222222222);


INSERT INTO cs332f9.enrollment_record VALUES (891699407, 01, 18982, "A");
INSERT INTO cs332f9.enrollment_record VALUES (891699407, 01, 13467, "A");
INSERT INTO cs332f9.enrollment_record VALUES (157871111, 03, 13467, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (157871111, 01, 13110, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (157871111, 01, 13107, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (157871111, 01, 13106, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (157871111, 01, 18982, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (345167851, 01, 18982, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (345167851, 01, 18757, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (345167851, 01, 17880, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (796188953, 02, 13467, "B");
INSERT INTO cs332f9.enrollment_record VALUES (796188953, 01, 13110, "A");
INSERT INTO cs332f9.enrollment_record VALUES (796188953, 01, 13106, "B+");
INSERT INTO cs332f9.enrollment_record VALUES (111111111, 01, 18982, "C");
INSERT INTO cs332f9.enrollment_record VALUES (111111111, 01, 13467, "C+");
INSERT INTO cs332f9.enrollment_record VALUES (247912445, 03, 13467, "B+");
INSERT INTO cs332f9.enrollment_record VALUES (247912445, 01, 13107, "A");
INSERT INTO cs332f9.enrollment_record VALUES (247912445, 01, 13110, "B");
INSERT INTO cs332f9.enrollment_record VALUES (567156956, 02, 18982, "A+");
INSERT INTO cs332f9.enrollment_record VALUES (567156956, 01, 17880, "A");
INSERT INTO cs332f9.enrollment_record VALUES (987654321, 02, 18982, "B");
INSERT INTO cs332f9.enrollment_record VALUES (987654321, 01, 17880, "C");
INSERT INTO cs332f9.enrollment_record VALUES (123456789, 01, 13110, "C");
INSERT INTO cs332f9.enrollment_record VALUES (222222222, 01, 13106, "C");
INSERT INTO cs332f9.enrollment_record VALUES (222222222, 01, 13107, "C");
INSERT INTO cs332f9.enrollment_record VALUES (123456789, 01, 13107, "B");


