SELECT prof_ssn, title, classroom, meet_days, start_time, end_time
FROM cs332f9.course C, cs332f9.section S
WHERE prof_ssn = 333333333 AND S.CRN = C.CRN;