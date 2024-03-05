CREATE DATABASE IF NOT EXISTS HechoEnCasa;
USE HechoEnCasa;
-- creo la tabla para guardar los productos
CREATE TABLE Productos (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio INT NOT NULL,
    Stock INT NOT NULL
);
-- creo la tabla para guardar los clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);
-- creo la tabla de pedidos
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha TIME NOT NULL,
     ClienteID INT NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
 -- creo la tabla sobre los detalles de pedido
CREATE TABLE DetallePedido (
    DetalleID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    ProductoID INT,
    Cantidad INT NOT NULL,
    Precio INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);