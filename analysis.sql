-- Write and test your own queries below. No solutions are supplied.

-- Q1. List all schools and their districts.
-- Your query:
SELECT School_name, district
FROM Schools
ORDER BY School_name;

-- Q2. List workshops from newest to oldest.
-- Your query:
SELECT *
FROM workshops
ORDER BY workshop_date DESC;

-- Q3. Find all Arduino workshops.
-- Your query:
SELECT topic, workshop_date
FROM workshops
WHERE topic = 'Arduino';

-- Q4. Show each attendance record with school name, workshop topic, date and learners attended.
-- Your query:
SELECT school_name, topic, workshop_date, learners_attended
FROM attendance
JOIN schools
	ON attendance.school_id = schools.school_id
JOIN workshops
	ON attendance.workshop_id = workshops.workshop_id

-- Q5. Calculate total learner attendances for each school that attended.
-- Your query:
SELECT SUM(learners_attended) AS Total_Learners_Attended, school_name
FROM attendance
JOIN schools
	ON attendance.school_id = schools.school_id
GROUP BY school_name;

-- Q6. Calculate total learner attendances for every workshop, including workshops with none.
-- Your query:
SELECT workshops.workshop_id, workshop_date, topic, SUM(learners_attended) AS Total_Learners_Attendance
FROM workshops
LEFT JOIN attendance
	ON attendance.workshop_id = workshops.workshop_id
GROUP BY workshops.workshop_id;

-- Q7. List schools that have never attended a workshop.
-- Your query:
SELECT school_name AS Schools_Never_Attended
FROM schools
left JOIN attendance
	ON attendance.school_id = schools.school_id
WHERE attendance.school_id IS NULL;

-- Q8. Calculate total learner attendances by district.
-- Your query:
SELECT district, SUM(learners_attended) AS Total_learners_Attendance
FROM schools
LEFT JOIN attendance
		ON attendance.school_id = schools.school_id
GROUP BY district;

-- Q9. Calculate attendance percentage for every workshop and identify workshops below capacity.
-- Your query:
SELECT workshops.workshop_id, workshop_date, capacity, topic, (COALESCE(SUM(learners_attended), 0)* 100.0 / capacity) AS Attendence_Percentage
FROM workshops
LEFT JOIN attendance
	ON attendance.workshop_id = workshops.workshop_id
GROUP BY workshops.workshop_id
HAVING COALESCE(SUM(learners_attended), 0) < capacity;

-- Q10. Show schools with more than 40 learner attendances in total.
-- Your query:
SELECT school_name, sum(learners_attended) AS Total_Learner_Attendances
FROM schools
LEFT JOIN attendance
	on attendance.school_id = schools.school_id
GROUP BY school_name
HAVING SUM(learners_attended) > 40;
