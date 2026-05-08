CREATE DATABASE IF NOT EXISTS sabor_gourmet;
USE sabor_gourmet;
CREATE TABLE Clientes (
    ID_cliente INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Telefono VARCHAR(15)
);
CREATE TABLE Empleados (
    ID_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Puesto VARCHAR(50),
    Fecha_contratacion DATE
);
CREATE TABLE Menu (
    ID_plato INT PRIMARY KEY,
    Nombre_plato VARCHAR(50) NOT NULL,
    Tipo VARCHAR(30),
    Precio DECIMAL(8, 2)
);
CREATE TABLE Pedidos (
    ID_pedido INT PRIMARY KEY,
    ID_cliente INT,
    ID_empleado INT,
    Fecha_pedido DATE,
    Total DECIMAL(10, 2),
    CONSTRAINT FK_ClientePedido FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    CONSTRAINT FK_EmpleadoPedido FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado)
);
CREATE TABLE Detalle_Pedido (
    ID_detalle INT PRIMARY KEY,
    ID_pedido INT,
    ID_plato INT,
    Cantidad INT,
    Subtotal DECIMAL(10, 2),
    CONSTRAINT FK_DetallePedido FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido),
    CONSTRAINT FK_DetalleMenu FOREIGN KEY (ID_plato) REFERENCES Menu(ID_plato)
);