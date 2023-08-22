SELECT 
    loc.city,
    AVG(TIMESTAMPDIFF(YEAR, emp.hire_date, CURDATE())) AS average_experience_years
FROM 
    departments dept
JOIN 
    employees emp ON dept.department_id = emp.department_id
RIGHT JOIN 
    locations loc ON dept.location_id = loc.location_id
GROUP BY 
    loc.city;
