-- Vista del consumo de cada cliente (nombre, bebida, platillo, fecha y montos).
CREATE VIEW VistaConsumoCliente AS
SELECT
    c.Nombre AS NombreCliente,
    c.Apellido AS ApellidoCliente,
    b.Nombre AS NombreBebida,
    p.Nombre AS NombrePlatillo,
    f.fecha_factura AS FechaFactura,
    p.Importe AS MontoPlatillo, -- Importe del platillo (puede ser NULL si no hubo)
    b.Importe AS MontoBebida    -- Importe de la bebida (puede ser NULL si no hubo)
FROM Factura f
JOIN Cliente c ON f.id_cliente = c.id_cliente
LEFT JOIN Platillo p ON f.id_platillo = p.id_platillo -- LEFT JOIN por si solo pidió bebida
LEFT JOIN Bebida b ON f.id_bebida = b.id_bebida;     -- LEFT JOIN por si solo pidió platillo

-- Vista del mesero, número de factura que atendió, la fecha y la mesa.
CREATE VIEW VistaAtencionMesero AS
SELECT
    m.Nombre AS NombreMesero,
    m.Apellido1,
    m.Apellido2, 
    f.id_factura AS NumeroFactura,
    f.fecha_factura AS FechaFactura,
    f.id_mesa AS NumeroMesa
FROM Factura f
JOIN Mesero m ON f.id_mesero = m.id_mesero;

-- Vista del valor total de compra por cada cliente en todas sus facturas (platillo + bebida).
CREATE VIEW VistaTotalPorCliente AS
SELECT
    c.id_cliente,
    c.Nombre AS NombreCliente,
    c.Apellido AS ApellidoCliente,
    -- Se usa COALESCE para sumar correctamente aunque falte platillo o bebida en alguna factura
    SUM(COALESCE(p.Importe, 0) + COALESCE(b.Importe, 0)) AS GastoTotalCliente
FROM Factura f
JOIN Cliente c ON f.id_cliente = c.id_cliente
LEFT JOIN Platillo p ON f.id_platillo = p.id_platillo
LEFT JOIN Bebida b ON f.id_bebida = b.id_bebida
GROUP BY c.id_cliente, c.Nombre, c.Apellido; 

-- Convertir a vista las consultas 6 y 7 del anterior ejercicio

-- Vista para la consulta 6 (Total consumo 'Manuel Pedroza Gonzalez')
CREATE VIEW VistaConsumoManuelPedroza AS
SELECT
    SUM(COALESCE(p.Importe, 0) + COALESCE(b.Importe, 0)) AS ConsumoTotalManuel
FROM Cliente c
JOIN Factura f ON c.id_cliente = c.id_cliente
LEFT JOIN Platillo p ON f.id_platillo = p.id_platillo
LEFT JOIN Bebida b ON f.id_bebida = b.id_bebida
WHERE c.Nombre = 'Manuel' AND c.Apellido = 'Pedroza Gonzalez';

-- Vista para la consulta 7 (Mesas utilizadas)
CREATE VIEW VistaMesasUtilizadas AS
SELECT DISTINCT
    m.id_mesa,
    m.Ubicacion,
    m.numComensales
FROM Mesa m
JOIN Factura f ON m.id_mesa = f.id_mesa;
