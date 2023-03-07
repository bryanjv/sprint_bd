SELECT capacitacion.*, asistentes.asistnombrecompleto, asistentes.asistedad, asistcorreo 
	FROM capacitacion 
    INNER JOIN asistentes
    ON capacitacion.idcapacitacion=asistentes.idasistente
    WHERE capacitacion.cliente_rutcliente=113358728;
    
SELECT visita.*,chequeos.*,chequeo_visita.*
	FROM clientes 
    INNER JOIN visita 
    ON clientes.rutcliente = visita.cliente_rutcliente 
    INNER JOIN chequeo_visita 
    ON visita.idvisita = chequeo_visita.visita_idvisita 
    INNER JOIN chequeos 
    ON chequeo_visita.chequeo_idchequeo = chequeos.idchequeo 
    WHERE clientes.clicomuna="Valparaiso";
    
SELECT accidente.acciconsecuencias, clientes.clinombres, clientes.cliapellidos, clientes.rutcliente, clientes.clitelefono 
	FROM accidente 
	INNER JOIN clientes 
    ON clientes.rutcliente = accidente.cliente_rutcliente;
