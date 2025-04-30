-- Obtener los vehículos disponibles en una ciudad específica (Ej: 'Cali').
-- Selecciona todos los datos de los vehículos que están en estado 'Disponible'
-- y pertenecen a una sucursal ubicada en la ciudad especificada.
SELECT v.*
FROM Vehiculo v
JOIN Sucursal s ON v.sid = s.sid  
WHERE v.vstate = 'Disponible'    
  AND s.sciudad = 'Cali';        

-- Listar los alquileres activos con información del cliente y vehículo.
-- Selecciona información relevante del alquiler, cliente y vehículo
-- para todos los alquileres que están actualmente en estado 'Activo'.
SELECT
    a.aid AS AlquilerID,
    a.start_date AS FechaInicio,
    a.end_date AS FechaFin,
    c.cid AS ClienteID,
    c.cname AS NombreCliente,
    v.vid AS VehiculoID,
    v.vbrand AS MarcaVehiculo,
    v.vmodel AS ModeloVehiculo,
    v.plate AS PlacaVehiculo
FROM Alquiler a
JOIN Cliente c ON a.cid = c.cid      
JOIN Vehiculo v ON a.vid = v.vid   
WHERE a.astate = 'Activo';          

-- Calcular los ingresos totales por sucursal considerando solo vehículos con más de 3 alquileres.
-- Suma los montos de los pagos (pamount) agrupados por sucursal,
-- pero solo incluye los pagos correspondientes a alquileres de vehículos
-- que han sido alquilados más de 3 veces en total.
SELECT
    s.sid AS SucursalID,
    s.sname AS NombreSucursal,
    SUM(p.pamount) AS IngresosTotalesSucursal
FROM Pago p
JOIN Alquiler a ON p.aid = a.aid        
JOIN Vehiculo v ON a.vid = v.vid     
JOIN Sucursal s ON v.sid = s.sid       
WHERE v.vid IN (                        
    SELECT vid                        
    FROM Alquiler
    GROUP BY vid                       
    HAVING COUNT(*) > 3                
)
GROUP BY s.sid, s.sname                
ORDER BY IngresosTotalesSucursal DESC;  

-- Filtrar solo vehículos con más de 5 alquileres (usar subconsulta).
-- Selecciona toda la información de los vehículos cuyo ID (vid)
-- aparece más de 5 veces en la tabla de Alquiler.
SELECT v.*
FROM Vehiculo v
WHERE v.vid IN (                       
    SELECT vid                          
    FROM Alquiler
    GROUP BY vid                        
    HAVING COUNT(*) > 5                
);

-- Sumar los montos de todos los pagos asociados.
-- Calcula la suma total de la columna pamount (monto del pago)
-- de todos los registros en la tabla Pago.
SELECT SUM(pamount) AS MontoTotalPagos
FROM Pago;