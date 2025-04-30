
INSERT INTO Cliente (id_cliente, Nombre, Apellido, Observaciones) VALUES
(1, 'Manuel', 'Pedroza Gonzalez', 'Cliente frecuente'),
(2, 'Ana', 'Martínez', 'Alergia al maní'),
(3, 'Carlos', 'López', NULL), 
(4, 'Sofía', 'Ramírez', 'Prefiere mesa ventana'),
(5, 'Jorge', 'Hernández', NULL), 
(6, 'Valentina', 'Gómez', 'Vegetariana'),
(7, 'Andrés', 'Díaz', NULL), 
(8, 'Camila', 'Torres', 'Cumpleaños'),
(9, 'Mateo', 'Vargas', NULL), 
(10, 'Isabella', 'Castro', 'Cliente nuevo');

INSERT INTO Mesero (id_mesero, Nombre, Apellido1, Apellido2) VALUES
(301, 'Ricardo', 'García', 'Pérez'),
(302, 'Elena', 'Sánchez', 'López'),
(303, 'Javier', 'Ruiz', 'Martínez'),
(304, 'Paula', 'Jiménez', 'Gómez'),
(305, 'Daniel', 'Moreno', 'Hernández'),
(306, 'Lucía', 'Silva', 'Torres'),
(307, 'Fernando', 'Rojas', 'Ramírez'),
(308, 'Gabriela', 'Herrera', 'Vargas'),
(309, 'Sergio', 'Ortiz', 'Morales'),
(310, 'Natalia', 'Mendoza', 'Castro');

INSERT INTO Platillo (id_platillo, Nombre, Importe) VALUES
(101, 'Bandeja Paisa', 35000),
(102, 'Ajiaco Santafereño', 32000),
(103, 'Arroz a la Marinera', 45000),
(104, 'Pizza Hawaiana', 28000),
(105, 'Lomo Saltado', 42000),
(106, 'Pasta Carbonara', 38000),
(107, 'Ensalada César con Pollo', 30000),
(108, 'Sopa de Lentejas', 15000),
(109, 'Filete Mignon Especial', 350000),
(110, 'Hamburguesa Clásica', 25000);

INSERT INTO Bebida (id_bebida, Nombre, Importe) VALUES
(201, 'Jugo de Lulo', 8000),
(202, 'Limonada de Coco', 9000),
(203, 'Gaseosa Postobón', 5000),
(204, 'Agua sin Gas', 4000),
(205, 'Cerveza Club Colombia', 7000),
(206, 'Copa de Vino Tinto', 15000),
(207, 'Café Americano', 4500),
(208, 'Té Helado', 6000),
(209, 'Limonada Natural', 7000),
(210, 'Jugo de Mora', 8000);

INSERT INTO Mesa (id_mesa, numComensales, Ubicacion) VALUES
(1, 4, 'Primer Piso'),
(2, 2, 'Primer Piso'),
(3, 6, 'Primer Piso'),
(4, 4, 'Terraza'),
(5, 2, 'Terraza'),
(6, 8, 'Segundo Piso'),
(7, 4, 'Segundo Piso'),
(8, 4, 'Segundo Piso'),
(9, 2, 'Segundo Piso'),
(10, 6, 'Segundo Piso');

INSERT INTO Factura (id_factura, fecha_factura, id_cliente, id_mesero, id_mesa, id_platillo, id_bebida) VALUES
(1001, '2025-04-20', 1, 301, 1, 101, 201),
(1002, '2025-04-21', 2, 302, 2, 107, 204),
(1003, '2025-04-22', 3, 303, 3, 103, 205),
(1004, '2025-04-23', 4, 304, 4, 106, 202),
(1005, '2025-04-24', 5, 305, 5, 105, 203),
(1006, '2025-04-25', 1, 301, 6, 109, 206),
(1007, '2025-04-26', 7, 307, 10, 104, 209),
(1008, '2025-04-27', 8, 308, 8, NULL, 208), 
(1009, '2025-04-28', 9, 309, 9, 110, NULL), 
(1010, '2025-04-29', 10, 310, 1, 102, 210),
(1011, '2025-04-29', 1, 306, 10, 103, 205); 
