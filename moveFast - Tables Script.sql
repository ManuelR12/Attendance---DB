-- Tabla Cliente
CREATE TABLE Cliente (
	cid INT PRIMARY KEY,             -- Clave Primaria (Integridad de Entidad)
	cname VARCHAR(120) NOT NULL,     -- Campo obligatorio (NOT NULL)
	cemail VARCHAR(120) UNIQUE NOT NULL, -- Campo obligatorio y único (NOT NULL, UNIQUE)
	ctel VARCHAR(50),
	cdir VARCHAR(120)
);

-- Tabla Sucursal
CREATE TABLE Sucursal (
	sid INT PRIMARY KEY,             -- Clave Primaria
	sname VARCHAR(120) NOT NULL,     -- Campo obligatorio (NOT NULL)
	sciudad VARCHAR(120) NOT NULL,   -- Campo obligatorio (NOT NULL)
	sdir VARCHAR(120)
);

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
	vid INT PRIMARY KEY,             -- Clave Primaria
	vbrand VARCHAR(120) NOT NULL,
	vmodel VARCHAR(100) NOT NULL,
	vyear INT NOT NULL CHECK (vyear BETWEEN 2000 AND 2025), -- Restricción CHECK para el año
	plate VARCHAR(20) UNIQUE NOT NULL, -- Campo obligatorio y único (NOT NULL, UNIQUE)
	vstate VARCHAR(50) DEFAULT 'Disponible', -- Valor predeterminado DEFAULT
	sid INT NOT NULL,

	-- Clave Foránea con acción ON UPDATE CASCADE requerida
	FOREIGN KEY (sid) REFERENCES Sucursal(sid) ON UPDATE CASCADE
);

-- Tabla Alquiler
CREATE TABLE Alquiler (
	aid INT PRIMARY KEY,             -- Clave Primaria
	cid INT NOT NULL,
	vid INT NOT NULL,
	start_date TIMESTAMP NOT NULL,   -- Campo obligatorio (NOT NULL)
	end_date TIMESTAMP,
	total_cost DECIMAL(10, 2),       -- Campo tipo monto
	astate VARCHAR(50) DEFAULT 'Activo', -- Valor predeterminado DEFAULT

	-- Clave Foránea con acción ON DELETE CASCADE requerida
	FOREIGN KEY (cid) REFERENCES Cliente(cid) ON DELETE CASCADE,

	-- Clave Foránea (sin acción específica requerida en el PDF para esta FK)
	FOREIGN KEY (vid) REFERENCES Vehiculo(vid)
);

-- Tabla Pago
CREATE TABLE Pago (
	pid INT PRIMARY KEY,             -- Clave Primaria
	aid INT NOT NULL,
	pay_date TIMESTAMP NOT NULL,     -- Campo obligatorio (NOT NULL)
	pamount DECIMAL(10, 2) NOT NULL, -- Campo tipo monto obligatorio (NOT NULL)
	pay_method VARCHAR(50),

	-- Clave Foránea con acción ON DELETE CASCADE requerida
	FOREIGN KEY (aid) REFERENCES Alquiler(aid) ON DELETE CASCADE
);

