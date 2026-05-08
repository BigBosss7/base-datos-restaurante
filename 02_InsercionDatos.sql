USE sabor_gourmet;
INSERT INTO Clientes
VALUES (
        1,
        'Juan Pérez',
        'juanperez@mail.com',
        '555-1234'
    ),
    (
        2,
        'María López',
        'marialopez@mail.com',
        '555-5678'
    ),
    (
        3,
        'Carlos Hernández',
        'carlos@mail.com',
        '555-9012'
    );
INSERT INTO Empleados
VALUES (1, 'Ana Torres', 'Mesera', '2022-03-15'),
    (2, 'Luis Ramírez', 'Cajero', '2021-07-20'),
    (3, 'Sofía Martínez', 'Gerente', '2020-01-10');
INSERT INTO Menu
VALUES (1, 'Ensalada César', 'Entrada', 120.00),
    (2, 'Pasta Alfredo', 'Plato fuerte', 220.00),
    (3, 'Rib eye', 'Plato fuerte', 350.00),
    (4, 'Pastel de chocolate', 'Postre', 95.00),
    (5, 'Limonada natural', 'Bebida', 55.00);
INSERT INTO Pedidos
VALUES (1, 1, 1, '2023-05-10', 395.00),
    (2, 2, 2, '2023-06-18', 570.00),
    (3, 3, 1, '2024-01-12', 275.00);
INSERT INTO Detalle_Pedido
VALUES (1, 1, 2, 1, 220.00),
    (2, 1, 4, 1, 95.00),
    (3, 1, 5, 1, 55.00),
    (4, 2, 3, 1, 350.00),
    (5, 2, 2, 1, 220.00),
    (6, 3, 1, 1, 120.00),
    (7, 3, 5, 1, 55.00),
    (8, 3, 4, 1, 95.00);