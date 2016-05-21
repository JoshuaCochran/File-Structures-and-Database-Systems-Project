SELECT S.SNO, classroom, meet_days, start_time, end_time, COUNT(student_CWID)
FROM project.section S, project.enrollment_record E
WHERE S.CRN = 18982 AND E.CRN = S.CRN AND E.SNO = S.SNO
GROUP BY S.SNO;