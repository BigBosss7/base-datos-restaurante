USE sabor_gourmet;
-- Ver todos los clientes
SELECT *
FROM Clientes;
-- Ver todos los empleados
SELECT *
FROM Empleados;
-- Ver el menú
SELECT *
FROM Menu;
-- Ver pedidos
SELECT *
FROM Pedidos;
-- Operador numérico: calcular total con IVA
SELECT ID_pedido,
    Total,
    Total * 1.16 AS TotalConIVA
FROM Pedidos;
-- Operador de caracteres: unir nombre y teléfono
SELECT CONCAT(Nombre, ' (', Telefono, ')') AS Contacto
FROM Clientes;
-- Operador de fechas: obtener año de contratación
SELECT ID_empleado,
    Nombre,
    Puesto,
    Fecha_contratacion,
    YEAR(Fecha_contratacion) AS AnioContratacion
FROM Empleados;
-- Operadores lógicos
SELECT *
FROM Pedidos
WHERE Total > 500
    AND Fecha_pedido BETWEEN '2023-01-01' AND '2023-12-31';
-- Consulta con JOIN: pedidos con cliente y empleado
SELECT p.ID_pedido,
    c.Nombre AS Cliente,
    e.Nombre AS Empleado,
    p.Fecha_pedido,
    p.Total
FROM Pedidos p
    INNER JOIN Clientes c ON p.ID_cliente = c.ID_cliente
    INNER JOIN Empleados e ON p.ID_empleado = e.ID_empleado;
-- Consulta muchos a muchos: platos incluidos en cada pedido
SELECT p.ID_pedido,
    c.Nombre AS Cliente,
    m.Nombre_plato,
    d.Cantidad,
    d.Subtotal
FROM Detalle_Pedido d
    INNER JOIN Pedidos p ON d.ID_pedido = p.ID_pedido
    INNER JOIN Clientes c ON p.ID_cliente = c.ID_cliente
    INNER JOIN Menu m ON d.ID_plato = m.ID_plato;