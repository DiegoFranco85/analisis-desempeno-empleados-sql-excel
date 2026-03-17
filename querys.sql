/*MEJOR EMPLEADO*/
SELECT e.nombre,
       AVG(d.puntuacion) AS promedio_desempeno
FROM empleados e
JOIN desempeno d ON e.id_empleado = d.id_empleado
GROUP BY e.nombre
ORDER BY promedio_desempeno DESC;

/*MEJOR DEPARTAMENTO*/
SELECT dep.nombre_departamento,
       AVG(d.puntuacion) AS promedio_departamento
FROM desempeno d
JOIN empleados e ON d.id_empleado = e.id_empleado
JOIN departamento dep ON e.departamento_id = dep.departamento_id
GROUP BY dep.nombre_departamento
ORDER BY promedio_departamento DESC;

/*EMPLEADO CON BAJO DESEMPEÑO*/
SELECT e.nombre,
       AVG(d.puntuacion) AS promedio
FROM empleados e
JOIN desempeno d ON e.id_empleado = d.id_empleado
GROUP BY e.nombre
HAVING promedio < 7;

/*TOP 3 EMPLEADOS*/
SELECT e.nombre,
       AVG(d.puntuacion) AS promedio
FROM empleados e
JOIN desempeno d ON e.id_empleado = d.id_empleado
GROUP BY e.nombre
ORDER BY promedio DESC
LIMIT 3;