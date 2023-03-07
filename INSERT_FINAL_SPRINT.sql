INSERT INTO clientes VALUES (113358728,"Lord Valdomero","Haguart Saludo","221446367","Fonasa",0,"Castillo 4523","Valparaiso",100),
                            (121321232,"Son Goku","Kakarotto","665787676","ISAPRE",1,"En la Montaña Paos N°1","Casablanca",60),
                            (312212123,"Dio","Brando","2433243232","Fonasa",0,"","Valparaiso",300);

INSERT INTO capacitacion (capfecha,caphora,caplugar,capduracion,cliente_rutcliente) VALUES ("2023-03-07","10:30:00","Con-Con",300,312212123),
                                                                                           ("2021-07-31","13:30:55","Viña del Mar",200,113358728),
                                                                                           ("2020-03-24","18:30:27","Valparaiso",200,121321232);


INSERT INTO asistentes (asistnombrecompleto,asistedad,asistcorreo,asisttelefono,capacitacion_idcapacitacion) VALUES ("Freddy Mercury",40,"fredakklaa@gmail.com","221321EO",1),
                                                                                                                    ("Marilyn Monroe",45,"dasdasroe@gmail.com","23213123",2),
                                                                                                                    ("John Lennon",56,"jajkfjkqfq@gmail.com","87565445",3);

INSERT INTO accidente (accifecha,accihora,accilugar,acciorigen,acciconsecuencias,cliente_rutcliente) VALUES ("2022-02-01","09:05:00","Las Condes","choque automovilistico","lesiones en piernas y brazos",113358728),
                                                                                                            ("2021-05-22","10:30:00","Camino Internacional","tobillo torcido","lesion en la pierna derecha",121321232),
                                                                                                            ("2020-03-21","11:30:00","Valparaiso","bala perdida","disparo en el abdomen",312212123);

INSERT INTO visita (visfecha,vishora,vislugar,viscomentarios,cliente_rutcliente) VALUES ("2022-02-04","10:30","Hospital G.Frike","terrible",113358728),
                                                                                        ("2021-05-24","11:30","Hospital Banviuren","horrible",121321232),
                                                                                        ("2020-03-28","16:40","Hospital San Nosé","deficiente",312212123);

INSERT INTO chequeos (nombrechequeo) VALUES ("Revisar los Baños"),("Limpiar los Baños"),("Arreglar las luces");

INSERT INTO chequeo_visita VALUES (1,1,TRUE,"Limpieza completada: baños tapados"),(1,2,FALSE,"No se encontraron herramientas"),(3,3,TRUE,"Luces reemplazadas, estaban quemadas");

INSERT INTO profesionales VALUES (3902139,"Son Gohan","Escaramuse V.",9324329,"Investigador Privado","Investigar incongruencias médicas"),
                                 (4465341,"Piccolo Makum","Mandarin",921232,"Enfermero","kkkk"),
                                 (1231244,"Andres Miguel","Bellaco C.",912321,"Doctor","kkkkk");

INSERT INTO usuarios (usuarnombre,usuarapellidos,usuarifechanac,cliente_rutcliente,profesional_rutprofesional) VALUES ("Valdomero2020","Haguart Saludo","1903-03-01",113358728,3902139),
                                                                                                                      ("GokuKKroto","Kakarotto","1963-07-08",121321232,4465341),
                                                                                                                      ("KonoDioDA","Brando","1723-06-24",312212123,1231244);

INSERT INTO administrativos VALUES (312321,"Trinidad Sastre","Cabrero","trinidadsastrecabrero@gmail.com","Administracion",1),
                                   (324325,"Amor Tello","Aragón","amortelloaragon@gmail.com","Finanzas",2),
                                   (322121,"Violeta Torrent","Cánovas","violetatorrentcanovas@gmail.com","Técnologia",3);

INSERT INTO pagos (fechapago,monto,MES,AÑO,cliente_rutcliente_pago) VALUES ("2022-05-27",60000,5,2022,113358728),
                                                                           ("2020-03-10",80000,3,2020,121321232),
                                                                           ("2021-09-01",100000,9,2021,312212123);

INSERT INTO asesorias (fecha,motivo,profesional_rutprofesional) VALUES ("2019-12-29","falsificaciones de certificados medicos",3902139),
                                                                       ("2020-10-22","entrenamiento nuevas técnicas médicas",4465341),
                                                                       ("2021-03-10","asesoria de nuevas medicinas",1231244);                                   

INSERT INTO actividades (tituloactividad,descripcion,plazo,asesorias_idasesoria) VALUES ("Investigacion","busqueda de certificados medicos falsos",20,1),
                                                                                        ("Nuevas tecnicas medicas","preparacion de nuevas tecnicas medicas",10,2),
                                                                                        ("Nuevas medicinas","introduccion a nuevas medicinas",5,3);