SELECT   l.city
FROM locations l
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON e.department_id = d.department_id
GROUP BY l.city
HAVING COUNT(e.employee_id) < 10;
