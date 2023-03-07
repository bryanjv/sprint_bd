DROP SCHEMA IF EXISTS sprint;
CREATE SCHEMA `sprint`;
use sprint;

CREATE TABLE clientes (
    rutcliente INT NOT NULL,
    clinombres VARCHAR(30) NOT NULL,
    cliapellidos VARCHAR(50),
    clitelefono VARCHAR(50) NOT NULL,
    cliafp VARCHAR(30),
    clisistemasalud INT,
    clidireccion VARCHAR(100) NOT NULL,
    clicomuna VARCHAR(50) NOT NULL,
    cliedad INT NOT NULL);
    
    ALTER TABLE clientes ADD CONSTRAINT clientes_pk PRIMARY KEY (rutcliente);
    
CREATE TABLE capacitacion (
        idcapacitacion INT AUTO_INCREMENT NOT NULL,
        capfecha DATE NOT NULL,
        caphora TIME,
        caplugar VARCHAR(100) NOT NULL,
        capduracion INT,
        cliente_rutcliente INT NOT NULL,
		CONSTRAINT capacitacion_pk PRIMARY KEY (idcapacitacion)
);
    ALTER TABLE capacitacion ADD CONSTRAINT capacitacion_cliente_fk FOREIGN KEY (cliente_rutcliente)
    REFERENCES clientes(rutcliente);
    
CREATE TABLE asistentes (
        idasistente INT AUTO_INCREMENT NOT NULL,
        asistnombrecompleto VARCHAR(100) NOT NULL,
        asistedad INT NOT NULL,
        asistcorreo VARCHAR(20),
        asisttelefono VARCHAR(20),
        capacitacion_idcapacitacion INT NOT NULL,
		CONSTRAINT asistentes_pk PRIMARY KEY (idasistente)
);
        ALTER TABLE asistentes ADD CONSTRAINT asistentes_capacitacion_fk FOREIGN KEY (capacitacion_idcapacitacion)
        REFERENCES capacitacion (idcapacitacion);
        
CREATE TABLE accidente (
        idaccidente INT AUTO_INCREMENT NOT NULL,
        accifecha DATE NOT NULL,
        accihora TIME NOT NULL,
        accilugar VARCHAR(150) NOT NULL,
        acciorigen VARCHAR(100) NOT NULL,
        acciconsecuencias VARCHAR(100),
        cliente_rutcliente INT NOT NULL,
		CONSTRAINT accidente_pk PRIMARY KEY AUTO_INCREMENT (idaccidente)
);
        ALTER TABLE accidente ADD CONSTRAINT accidente_cliente_fk FOREIGN KEY (cliente_rutcliente)
        REFERENCES clientes (rutcliente);
        
        
CREATE TABLE visita (
        idvisita INT AUTO_INCREMENT NOT NULL,
        visfecha DATE NOT NULL,
        vishora TIME,
        vislugar VARCHAR(50) NOT NULL,
        viscomentarios VARCHAR(250) NOT NULL,
        cliente_rutcliente INT NOT NULL,
        CONSTRAINT visita_pk PRIMARY KEY (idvisita));
        ALTER TABLE visita ADD CONSTRAINT visita_cliente_fk FOREIGN KEY (cliente_rutcliente)
        REFERENCES clientes (rutcliente);
        

CREATE TABLE chequeos (
        idchequeo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nombrechequeo VARCHAR(50)
        );

CREATE TABLE chequeo_visita(
		chequeo_idchequeo INT NOT NULL,
        visita_idvisita INT NOT NULL,
        estado BOOLEAN NOT NULL,
        observacion VARCHAR(50));

ALTER TABLE chequeo_visita ADD CONSTRAINT chequeo_visita_pk PRIMARY KEY (chequeo_idchequeo, visita_idvisita);
-- ALTER TABLE chequeo_visita ADD CONSTRAINT chequeo_visita_pk2 PRIMARY KEY (visita_idvisita);
ALTER TABLE chequeo_visita ADD CONSTRAINT chequeo_visita_fk FOREIGN KEY (chequeo_idchequeo) REFERENCES chequeos (idchequeo);
ALTER TABLE chequeo_visita ADD CONSTRAINT chequeo_visita_fk2 FOREIGN KEY (visita_idvisita) REFERENCES visita (idvisita);

CREATE TABLE profesionales(
        profrut INT PRIMARY KEY NOT NULL,
        profnombres VARCHAR(30) NOT NULL,
        profapellidos VARCHAR(50) NOT NULL,
        proftelef INT NOT NULL,
        proftitulo VARCHAR (30) NOT NULL,
        profproyecto VARCHAR (50) NOT NULL);

CREATE TABLE usuarios(
		idusuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        usuarnombre VARCHAR(30) NOT NULL,
        usuarapellidos VARCHAR(50) NOT NULL,
        usuarifechanac DATE NOT NULL,
        cliente_rutcliente INT UNIQUE NOT NULL,
        profesional_rutprofesional INT UNIQUE NOT NULL);
ALTER TABLE usuarios ADD CONSTRAINT usuario_fk FOREIGN KEY (cliente_rutcliente) REFERENCES clientes (rutcliente);
ALTER TABLE usuarios ADD CONSTRAINT usuario_fk2 FOREIGN KEY (profesional_rutprofesional) REFERENCES profesionales (profrut);

CREATE TABLE administrativos(
        adminrut INT NOT NULL PRIMARY KEY,
        adminnombres VARCHAR(30) NOT NULL,
        adminapellidos VARCHAR(50) NOT NULL,
        admincorreoelectonico VARCHAR(50) NOT NULL,
        adminnombrearea VARCHAR(20) NOT NULL,
        usuario_idusuario INT NOT NULL);

ALTER TABLE administrativos ADD CONSTRAINT admin_usuario_nombre_fk FOREIGN KEY (usuario_idusuario) 
REFERENCES usuarios (idusuario);
        
CREATE TABLE pagos(
        idpago INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
        fechapago DATE NOT NULL,
        monto INT NOT NULL,
        MES INT NOT NULL,
        AÑO INT NOT NULL,
        cliente_rutcliente_pago INT NOT NULL);
ALTER TABLE pagos ADD CONSTRAINT pago_cliente_fk FOREIGN KEY (cliente_rutcliente_pago) REFERENCES clientes (rutcliente);

CREATE TABLE asesorias(
        idasesoria INT PRIMARY KEY AUTO_INCREMENT UNIQUE KEY NOT NULL,
        fecha DATE NOT NULL,
        motivo VARCHAR(200) NOT NULL,
        profesional_rutprofesional INT NOT NULL);

ALTER TABLE asesorias ADD CONSTRAINT asesoria_prof_fk FOREIGN KEY (profesional_rutprofesional) REFERENCES profesionales (profrut);

CREATE TABLE actividades(
        idactividad INT PRIMARY KEY AUTO_INCREMENT KEY NOT NULL,
        tituloactividad VARCHAR(50) NOT NULL,
        descripcion VARCHAR(200) NOT NULL,
        plazo INT NOT NULL,
        asesorias_idasesoria INT NOT NULL);
        
ALTER TABLE actividades ADD CONSTRAINT actividades_asesoria_fk FOREIGN KEY (asesorias_idasesoria) REFERENCES asesorias (idasesoria);