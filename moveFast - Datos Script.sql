
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(1, 'Juan Pérez García', 'juan.perez.g@email.com', '3101234567', 'Calle 10 # 4-40, Bogotá'),
(2, 'María Rodríguez López', 'maria.r.lopez@email.com', '3119876543', 'Carrera 5 # 15-20, Cali'),
(3, 'Carlos Gómez Martínez', 'carlos.gomez.m@email.com', '3123456789', 'Avenida Siempre Viva 742, Medellín'),
(4, 'Ana Hernández Díaz', 'ana.hernandez.d@email.com', '3131112233', 'Transversal 3 # 8-90, Barranquilla'),
(5, 'Luis Torres Sánchez', 'luis.torres.s@email.com', '3145556677', 'Diagonal 20 # 10-05, Cartagena'),
(6, 'Sofía Ramírez Vargas', 'sofia.ramirez.v@email.com', '3158889900', 'Calle Falsa 123, Bucaramanga'),
(7, 'Andrés Morales Castro', 'andres.morales.c@email.com', '3162223344', 'Circular 4 # 70-30, Pereira'),
(8, 'Laura Jiménez Ruiz', 'laura.jimenez.r@email.com', '3174445566', 'Manzana A Casa 5, Cúcuta'),
(9, 'David Herrera Moreno', 'david.herrera.m@email.com', '3187778899', 'Kilómetro 5 Vía al Mar, Santa Marta'),
(10, 'Valentina Rojas Silva', 'valentina.rojas.s@email.com', '3190001122', 'Calle 100 # 19-50, Bogotá');

INSERT INTO Sucursal (sid, sname, sciudad, sdir) VALUES
(101, 'Sucursal Chapinero', 'Bogotá', 'Carrera 7 # 55-30'),
(102, 'Sucursal El Poblado', 'Medellín', 'Calle 10 # 43A-15'),
(103, 'Sucursal Granada', 'Cali', 'Avenida 9N # 10-50'),
(104, 'Sucursal Bocagrande', 'Cartagena', 'Carrera 3 # 8-120'),
(105, 'Sucursal Prado', 'Barranquilla', 'Calle 72 # 50-10'),
(106, 'Sucursal Cabecera', 'Bucaramanga', 'Carrera 33 # 48-25'),
(107, 'Sucursal Circunvalar', 'Pereira', 'Avenida Circunvalar # 5-20'),
(108, 'Sucursal Caobos', 'Cúcuta', 'Avenida 0 # 11-11'),
(109, 'Sucursal Rodadero', 'Santa Marta', 'Carrera 1 # 7-30'),
(110, 'Sucursal Usaquén', 'Bogotá', 'Calle 118 # 7-60');

INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1001, 'Renault', 'Duster', 2022, 'FVK123', 'Disponible', 101),
(1002, 'Chevrolet', 'Onix', 2023, 'JEP456', 'Disponible', 102),
(1003, 'Mazda', 'CX-5', 2021, 'HPL789', 'Alquilado', 103),
(1004, 'Kia', 'Picanto', 2024, 'KOL012', 'Disponible', 104),
(1005, 'Nissan', 'Versa', 2020, 'MND345', 'Mantenimiento', 101),
(1006, 'Toyota', 'Hilux', 2022, 'QWE678', 'Disponible', 105),
(1007, 'Volkswagen', 'Gol', 2023, 'RTY901', 'Disponible', 106),
(1008, 'Ford', 'Escape', 2021, 'UIO234', 'Alquilado', 107),
(1009, 'Hyundai', 'Accent', 2024, 'PAS567', 'Disponible', 108),
(1010, 'Suzuki', 'Swift', 2020, 'DFG890', default, 103); 

INSERT INTO Alquiler (aid, cid, vid, start_date, end_date, total_cost, astate) VALUES
(501, 1, 1001, '2025-04-10 09:00:00', '2025-04-15 17:00:00', 550000.00, 'Finalizado'),
(502, 2, 1002, '2025-04-20 10:00:00', '2025-04-25 10:00:00', 480000.50, DEFAULT), 
(503, 3, 1003, '2025-04-22 14:30:00', NULL, NULL, 'Activo'), 
(504, 4, 1004, '2025-04-28 08:00:00', '2025-05-02 08:00:00', 450000.75, 'Activo'),
(505, 5, 1006, '2025-03-01 11:00:00', '2025-03-10 11:00:00', 950000.00, 'Finalizado'),
(506, 6, 1007, '2025-04-05 15:00:00', '2025-04-08 15:00:00', 320000.00, 'Finalizado'),
(507, 7, 1009, '2025-04-18 12:00:00', '2025-04-22 12:00:00', 410000.25, 'Finalizado'),
(508, 8, 1010, '2025-04-29 16:00:00', NULL, NULL, 'Activo'), 
(509, 9, 1001, '2025-04-25 10:30:00', '2025-04-30 18:00:00', 600000.00, 'Activo'), 
(510, 10, 1002, '2025-03-15 09:30:00', '2025-03-20 09:30:00', 500000.00, 'Finalizado'),
(511, 3, 1001, '2024-12-01 10:00:00', '2024-12-05 10:00:00', 440000.00, 'Finalizado'),
(512, 5, 1001, '2025-01-10 11:00:00', '2025-01-15 11:00:00', 500000.00, 'Finalizado'),
(513, 7, 1001, '2025-02-15 09:30:00', '2025-02-20 10:00:00', 520000.00, 'Finalizado'),
(514, 2, 1001, '2025-03-20 14:00:00', '2025-03-25 14:00:00', 510000.00, 'Finalizado'),
(515, 4, 1001, '2025-04-01 08:00:00', '2025-04-05 08:00:00', 480000.00, 'Finalizado'),
(516, 1, 1002, '2024-11-15 12:00:00', '2024-11-20 12:00:00', 400000.00, 'Finalizado'),
(517, 6, 1002, '2025-01-05 16:00:00', '2025-01-10 16:00:00', 450000.50, 'Finalizado'),
(518, 8, 1002, '2025-02-25 10:00:00', '2025-03-02 10:00:00', 470000.00, 'Finalizado'),
(519, 9, 1004, '2024-10-10 09:00:00', '2024-10-15 09:00:00', 380000.00, 'Finalizado'),
(520, 10, 1004, '2025-03-05 13:00:00', '2025-03-10 13:00:00', 420000.75, 'Finalizado');

INSERT INTO Pago (pid, aid, pay_date, pamount, pay_method) VALUES
(801, 501, '2025-04-15 17:05:00', 550000.00, 'Tarjeta Crédito'),
(802, 502, '2025-04-20 10:05:00', 200000.00, 'PSE'),
(803, 504, '2025-04-28 08:10:00', 450000.75, 'Efectivo'),
(804, 505, '2025-03-10 11:15:00', 950000.00, 'Tarjeta Débito'),
(805, 506, '2025-04-08 15:05:00', 320000.00, 'Tarjeta Crédito'),
(806, 507, '2025-04-22 12:10:00', 410000.25, 'PSE'),
(807, 509, '2025-04-25 10:35:00', 300000.00, 'Efectivo'), 
(808, 510, '2025-03-20 09:35:00', 500000.00, 'Tarjeta Débito'),
(809, 501, '2025-04-10 09:05:00', 100000.00, 'Anticipo Efectivo'), 
(810, 502, '2025-04-25 10:10:00', 280000.50, 'PSE'),
(811, 511, '2024-12-05 10:05:00', 440000.00, 'PSE'),
(812, 512, '2025-01-15 11:05:00', 500000.00, 'Tarjeta Crédito'),
(813, 513, '2025-02-20 10:05:00', 520000.00, 'Efectivo'),
(814, 514, '2025-03-25 14:05:00', 510000.00, 'Tarjeta Débito'),
(815, 515, '2025-04-05 08:05:00', 480000.00, 'PSE'),
(816, 516, '2024-11-20 12:05:00', 400000.00, 'Tarjeta Crédito'),
(817, 517, '2025-01-10 16:05:00', 450000.50, 'Efectivo'),
(818, 518, '2025-03-02 10:05:00', 470000.00, 'Tarjeta Débito'),
(819, 519, '2024-10-15 09:05:00', 380000.00, 'PSE'),
(820, 520, '2025-03-10 13:05:00', 420000.75, 'Tarjeta Crédito');

-- Error 1: Violar PRIMARY KEY (cid duplicado en Cliente)
-- Falla porque ya existe un cliente con cid = 1
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(1, 'Pedro Pascal', 'pedro.p@email.com', '3201112233', 'Calle Luna Calle Sol');

-- Error 2: Violar NOT NULL (cname es NULL en Cliente)
-- Falla porque cname no puede ser NULL
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(11, NULL, 'error.null.nombre@email.com', '3214445566', 'Dirección X');

-- Error 3: Violar UNIQUE (cemail duplicado en Cliente)
-- Falla porque 'juan.perez.g@email.com' ya existe
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(12, 'Juan Repetido', 'juan.perez.g@email.com', '3227778899', 'Otra Dirección');

-- Error 4: Violar NOT NULL (cemail es NULL en Cliente)
-- Falla porque cemail no puede ser NULL
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(13, 'Sin Email', NULL, '3230001122', 'Dirección Y');

-- Error 5: Violar CHECK (vyear fuera de rango en Vehiculo)
-- Falla porque vyear debe estar entre 2000 y 2025 (Intento con 1999)
INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1011, 'Ford', 'Fiesta', 1999, 'ERR001', 'Disponible', 101);

-- Error 6: Violar CHECK (vyear fuera de rango en Vehiculo)
-- Falla porque vyear debe estar entre 2000 y 2025 (Intento con 2026)
INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1012, 'Tesla', 'Model S', 2026, 'ERR002', 'Disponible', 102);

-- Error 7: Violar UNIQUE (plate duplicada en Vehiculo)
-- Falla porque la placa 'FVK123' ya existe
INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1013, 'Chevrolet', 'Spark', 2022, 'FVK123', 'Disponible', 103);

-- Error 8: Violar NOT NULL (plate es NULL en Vehiculo)
-- Falla porque plate no puede ser NULL
INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1014, 'Kia', 'Rio', 2023, NULL, 'Disponible', 104);

-- Error 9: Violar FOREIGN KEY (sid no existe en Sucursal)
-- Falla porque no existe una sucursal con sid = 999
INSERT INTO Vehiculo (vid, vbrand, vmodel, vyear, plate, vstate, sid) VALUES
(1015, 'BMW', 'X1', 2024, 'ERR003', 'Disponible', 999);

-- Error 10: Violar FOREIGN KEY (cid no existe en Cliente)
-- Falla porque no existe un cliente con cid = 999
INSERT INTO Alquiler (aid, cid, vid, start_date, end_date, total_cost, astate) VALUES
(511, 999, 1001, '2025-05-01 10:00:00', NULL, NULL, 'Activo');

-- Error 11: Violar FOREIGN KEY (vid no existe en Vehiculo)
-- Falla porque no existe un vehículo con vid = 9999
INSERT INTO Alquiler (aid, cid, vid, start_date, end_date, total_cost, astate) VALUES
(512, 1, 9999, '2025-05-02 11:00:00', NULL, NULL, 'Activo');

-- Error 12: Violar NOT NULL (start_date es NULL en Alquiler)
-- Falla porque start_date no puede ser NULL
INSERT INTO Alquiler (aid, cid, vid, start_date, end_date, total_cost, astate) VALUES
(513, 2, 1002, NULL, NULL, NULL, 'Activo');

-- Error 13: Violar FOREIGN KEY (aid no existe en Alquiler)
-- Falla porque no existe un alquiler con aid = 999
INSERT INTO Pago (pid, aid, pay_date, pamount, pay_method) VALUES
(811, 999, '2025-05-03 12:00:00', 100000.00, 'Efectivo');

-- Error 14: Violar NOT NULL (pamount es NULL en Pago)
-- Falla porque pamount no puede ser NULL
INSERT INTO Pago (pid, aid, pay_date, pamount, pay_method) VALUES
(812, 501, '2025-05-04 13:00:00', NULL, 'PSE');

-- Error 15: Violar NOT NULL (pay_date es NULL en Pago)
-- Falla porque pay_date no puede ser NULL
INSERT INTO Pago (pid, aid, pay_date, pamount, pay_method) VALUES
(813, 502, NULL, 50000.00, 'Tarjeta Crédito');

-- -----------------------------------------------------
-- Prueba 1: ON DELETE CASCADE (Cliente -> Alquiler)
-- -----------------------------------------------------

-- Paso 1.1: Insertar un cliente temporal para la prueba
INSERT INTO Cliente (cid, cname, cemail, ctel, cdir) VALUES
(999, 'Cliente Temporal Prueba', 'temporal@test.com', '3000000000', 'Dirección Prueba');

-- Paso 1.2: Insertar un alquiler asociado a este cliente temporal
INSERT INTO Alquiler (aid, cid, vid, start_date, astate) VALUES
(9999, 999, 1001, '2025-05-01 00:00:00', 'Activo');

-- Paso 1.3: Verificar que el alquiler existe ANTES de borrar el cliente
SELECT * FROM Alquiler WHERE aid = 9999;
-- (Debería mostrar el alquiler recién insertado)

-- Paso 1.4: Eliminar el cliente temporal
DELETE FROM Cliente WHERE cid = 999;

-- Paso 1.5: Verificar que el alquiler fue eliminado en cascada
SELECT * FROM Alquiler WHERE aid = 9999;

-- -----------------------------------------------------
-- Prueba 2: ON UPDATE CASCADE (Sucursal -> Vehiculo)
-- -----------------------------------------------------

-- Paso 2.1: Verificar el 'sid' actual de un vehículo específico
SELECT vid, sid FROM Vehiculo WHERE vid = 1001;

-- Paso 2.2: Actualizar el 'sid' de la sucursal en la tabla Sucursal
UPDATE Sucursal SET sid = 199 WHERE sid = 101;

-- Paso 2.3: Verificar que el 'sid' del vehículo se actualizó en cascada
SELECT vid, sid FROM Vehiculo WHERE vid = 1001;

-- Paso 2.4: Revertir el cambio para mantener la consistencia
UPDATE Sucursal SET sid = 101 WHERE sid = 199;

-- Paso 2.5: Verificar que se revirtió correctamente
SELECT vid, sid FROM Vehiculo WHERE vid = 1001;

-- -----------------------------------------------------
-- Prueba 3: ON DELETE RESTRICT (Vehiculo -> Alquiler)
-- -----------------------------------------------------

-- Paso 3.1: Verificar que existe un vehículo con alquileres asociados.
SELECT * FROM Alquiler WHERE vid = 1001;

-- Paso 3.2: Intentar eliminar el vehículo referenciado.
-- Este comando DEBERÍA FALLAR porque el vehículo con vid=1001
-- tiene registros asociados en la tabla Alquiler, y la acción
-- predeterminada ON DELETE es RESTRICT o NO ACTION.
DELETE FROM Vehiculo WHERE vid = 1001;


