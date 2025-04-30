CREATE TABLE Cliente (
	id_cliente INT PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Apellido VARCHAR(45) NOT NULL,
	Observaciones VARCHAR(45)
);

CREATE TABLE Mesero (
	id_mesero INT PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL,
	Apellido1 VARCHAR(45) NOT NULL,
	Apellido2 VARCHAR(45) NOT NULL
);

CREATE TABLE Platillo (
	id_platillo INT PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL UNIQUE,
	Importe INT 
);

CREATE TABLE Bebida (
	id_bebida INT PRIMARY KEY,
	Nombre VARCHAR(45) NOT NULL UNIQUE,
	Importe INT
);

CREATE TABLE Mesa (
	id_mesa INT PRIMARY KEY,
	numComensales INT,
	Ubicacion VARCHAR(45) NOT NULL
);

CREATE TABLE Factura (
	id_factura INT PRIMARY KEY,
	fecha_factura DATE NOT NULL,
	id_cliente INT NOT NULL,
	id_mesero INT NOT NULL,
	id_mesa INT NOT NULL,
	id_platillo INT,
	id_bebida INT,

	FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_mesero) REFERENCES Mesero(id_mesero),
	FOREIGN KEY (id_mesa) REFERENCES Mesa(id_mesa),
	FOREIGN KEY (id_platillo) REFERENCES Platillo(id_platillo),
	FOREIGN KEY (id_bebida) REFERENCES Bebida(id_bebida)
);