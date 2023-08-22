SELECT DISTINCT emp.manager_id
FROM employees emp
JOIN departments dept ON emp.department_id = dept.department_id
JOIN locations loc ON dept.location_id = loc.location_id
WHERE loc.city IN ('Roma', 'Venice', 'Tokyo', 'Hiroshima', 'Southlake', 'South San Francisco', 'South Brunswick', 'Seattle')
  AND TIMESTAMPDIFF(YEAR, emp.hire_date, CURDATE()) >= 10;
