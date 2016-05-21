SELECT grade, COUNT(student_CWID)
FROM cs332f9.enrollment_record
WHERE CRN = 18982 AND SNO = 01
GROUP BY grade;