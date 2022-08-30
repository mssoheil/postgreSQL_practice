-- SELECT e.id AS employee_id,
-- e.first_name, e.last_name, 
-- p.title AS project_title FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
-- LEFT JOIN projects AS p ON p.id = pe.project_id;

-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON t.id = e.team_id
-- WHERE t.id = 2;

SELECT e.id as employee_id, e.first_name, e.last_name, b.name
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS b ON b.id = t.building_id
WHERE b.id = 3
ORDER BY e.birthdate;