SELECT e.first_name, e.last_name, loc.country_id, loc.city, d.department_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations loc ON d.location_id = loc.location_id
WHERE loc.city IN (
    SELECT l.city
    FROM employees emp
    JOIN locations l ON d.location_id = l.location_id
    GROUP BY l.city
    ORDER BY COUNT(emp.employee_id) DESC
    LIMIT 5
);
select * from regions;
select * from employees;
select * from locations;
select * from departments;

