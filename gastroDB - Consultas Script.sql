-- Obtener el nombre y apellido de los clientes que hayan consumido un platillo específico.
SELECT DISTINCT c.Nombre, c.Apellido
FROM Cliente c
JOIN Factura f ON c.id_cliente = f.id_cliente
JOIN Platillo p ON f.id_platillo = p.id_platillo
WHERE p.Nombre = 'Pizza Hawaiana'; 

-- Obtener el nombre y apellido de los clientes que hayan consumido 'Arroz a la Marinera'.
SELECT DISTINCT c.Nombre, c.Apellido
FROM Cliente c
JOIN Factura f ON c.id_cliente = f.id_cliente
JOIN Platillo p ON f.id_platillo = p.id_platillo
WHERE p.Nombre = 'Arroz a la Marinera';

-- Listar el nombre del mesero y la fecha en la que atendió una mesa 10 ubicada en el segundo piso.
SELECT DISTINCT m.Nombre AS NombreMesero, m.Apellido1, m.Apellido2, f.fecha_factura
FROM Mesero m
JOIN Factura f ON m.id_mesero = f.id_mesero
JOIN Mesa me ON f.id_mesa = me.id_mesa
WHERE me.id_mesa = 10 AND me.Ubicacion = 'Segundo Piso';

-- Mostrar el nombre de los clientes junto con los nombres de las bebidas que consumieron en sus facturas.
SELECT DISTINCT c.Nombre AS NombreCliente, c.Apellido AS ApellidoCliente, b.Nombre AS NombreBebida
FROM Cliente c
JOIN Factura f ON c.id_cliente = f.id_cliente
JOIN Bebida b ON f.id_bebida = b.id_bebida
WHERE f.id_bebida IS NOT NULL; 

-- 	Consultar todas las facturas que incluyan platillos con un importe mayor a 300000,
--  incluyendo el nombre del cliente y del platillo.
SELECT
    f.id_factura,
    f.fecha_factura,
    c.Nombre AS NombreCliente,
    c.Apellido AS ApellidoCliente,
    p.Nombre AS NombrePlatillo,
    p.Importe AS ImportePlatillo
FROM Factura f
JOIN Cliente c ON f.id_cliente = c.id_cliente
JOIN Platillo p ON f.id_platillo = p.id_platillo
WHERE p.Importe > 300000;

-- Listar el total de consumo (importe de platillos y bebidas) del cliente llamado 'Manuel Pedroza Gonzalez'.
SELECT
    c.Nombre,
    c.Apellido,
    SUM(COALESCE(p.Importe, 0) + COALESCE(b.Importe, 0)) AS ConsumoTotal
FROM Cliente c
JOIN Factura f ON c.id_cliente = f.id_cliente
LEFT JOIN Platillo p ON f.id_platillo = p.id_platillo 
LEFT JOIN Bebida b ON f.id_bebida = b.id_bebida     
WHERE c.Nombre = 'Manuel' AND c.Apellido = 'Pedroza Gonzalez'
GROUP BY c.id_cliente, c.Nombre, c.Apellido; 

--  Liste las mesas que han sido utilizadas al menos una vez, indicando su ubicación y el número de comensales.
SELECT DISTINCT m.id_mesa, m.Ubicacion, m.numComensales
FROM Mesa m
JOIN Factura f ON m.id_mesa = f.id_mesa;

