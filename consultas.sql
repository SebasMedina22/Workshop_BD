-- CONSULTAS
USE `bd_jardineria`;
-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas
SELECT codigo_oficina, ciudad FROM oficina;

-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
SELECT ciudad, telefono FROM oficina WHERE pais = 'España';

-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
SELECT nombre, apellido1, apellido2, email, codigo_jefe FROM Empleado WHERE codigo_jefe = 7;

-- 4. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:
-- • Utilizando la función YEAR de MySQL.
SELECT DISTINCt p.codigo_cliente from pago p where year (p.fecha_pago) = 2008;

-- • Utilizando la función DATE_FORMAT de MySQL.
SELECT DISTINCt p.codigo_cliente from pago p where date_format(p.fecha_pago, '%Y') = 2008;

-- 5. ¿Cuántos empleados hay en la compañía?
SELECT COUNT(*) AS total_empleados FROM empleado;

-- 6. ¿Cuántos clientes tiene cada país?
SELECT pais, COUNT(*) AS total_clientes FROM cliente GROUP BY pais;

-- 7. ¿Cuál fue el pago medio en 2009?
SELECT AVG(total) as pago_medio_2009 FROM pago WHERE YEAR(fecha_pago) = 2009;

-- 8. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma  descendente por el número de pedidos
SELECT estado, COUNT(*) as cantidad_pedidos
FROM pedido
GROUP BY estado
ORDER BY cantidad_pedidos DESC;

-- 9. Calcula el precio de venta del producto más caro y barato en una misma consulta.
SELECT MAX(precio_venta) AS precio_mas_caro, MIN(precio_venta) AS precio_mas_barato
FROM inventarios_producto;

-- 10. Devuelve el nombre del cliente con mayor límite de crédito.
SELECT nombre_cliente
FROM cliente
ORDER BY limite_credito DESC
LIMIT 1;

-- 11. Devuelve el nombre del producto que tenga el precio de venta más caro.
SELECT nombre
FROM inventarios_producto
ORDER BY precio_venta DESC
LIMIT 1;

-- 12. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de 
-- unidades que se han vendido de cada producto a partir de los datos de la 
-- tabla detalle_pedido)
SELECT p.nombre
FROM inventarios_producto p
INNER JOIN (
    SELECT codigo_producto, SUM(cantidad) AS total_unidades
    FROM detalle_pedido
    GROUP BY codigo_producto
    ORDER BY total_unidades DESC
    LIMIT 1) t ON p.codigo_producto = t.codigo_producto;
    
-- 13. Los clientes cuyo límite de crédito sea mayor que los pagos que haya
-- realizado. (Sin utilizar INNER JOIN).
SELECT c.nombre_cliente, codigo_cliente  FROM `bd_jardineria`.`cliente` c WHERE c.limite_credito > ( SELECT SUM(p.total) FROM `bd_jardineria`.`pago` p WHERE p.codigo_cliente = c.codigo_cliente
);

-- 14. Devuelve el listado de clientes indicando el nombre del cliente y cuantos
-- pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido
SELECT c.nombre_cliente, COUNT(p.codigo_pedido) AS total_pedidos FROM `bd_jardineria`.`cliente` c
LEFT JOIN `bd_jardineria`.`pedido` p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.nombre_cliente;

-- 15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos
-- empleados que no sean representante de ventas de ningún cliente. 
SELECT e.nombre, e.apellido1, e.apellido2, e.puesto, o.telefono
FROM `bd_jardineria`.`empleado` e
LEFT JOIN `bd_jardineria`.`oficina` o ON e.codigo_oficina = o.codigo_oficina
WHERE e.puesto != 'Representante de Ventas';

-- 16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente 
-- que haya realizado la compra de algún producto de la gama Frutales.
SELECT o.codigo_oficina, o.ciudad, o.region, o.pais, o.codigo_postal, o.telefono, o.direccion1
FROM oficina o
WHERE o.codigo_oficina NOT IN 
        (SELECT DISTINCT o.codigo_oficina 
         FROM oficina o INNER JOIN empleado e USING(codigo_oficina)
                        INNER JOIN cliente c ON c.codigo_empleado = e.codigo_empleado
                        INNER JOIN pedido pe USING(codigo_cliente)
                        INNER JOIN detalle_pedido dp USING(codigo_pedido)
                        INNER JOIN inventarios_producto pr USING(codigo_producto)
         WHERE pr.gama = 'Jardinería_Árboles_Frutales');
         
-- 17. Devuelve el listado de clientes indicando el nombre del cliente y cuantos
-- pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no
-- han realizado ningún pedido.
SELECT c.nombre_cliente, COUNT(p.codigo_pedido) AS total_pedidos
FROM `bd_jardineria`.`cliente` c
LEFT JOIN `bd_jardineria`.`pedido` p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.nombre_cliente;

-- 18 Devuelve un listado con los nombres de los clientes y el total pagado por
-- cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
SELECT c.nombre_cliente, SUM(p.total) AS total_pagado
FROM `bd_jardineria`.`cliente` c
LEFT JOIN `bd_jardineria`.`pago` p ON c.codigo_cliente = p.codigo_cliente
GROUP BY c.codigo_cliente, c.nombre_cliente;