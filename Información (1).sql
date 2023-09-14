USE `bd_jardineria`;
-- insertar dato de Oficina
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF1', 'Nueva York', 'Estados Unidos', 'Norteamérica', '10001', '123-456-7890', '123 Main Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF2', 'Londres', 'Reino Unido', 'Europa', 'SW1A 1AA', '+44-20-12345678', '456 High Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF3', 'Sídney', 'Australia', 'Oceanía', '2000', '+61-2-98765432', '789 Queen Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF4', 'París', 'Francia', 'Europa', '75001', '+33-1-23456789', '1 Rue de la Paix');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF5', 'Tokio', 'Japón', 'Asia', '100-0001', '+81-3-98765432', '2 Chome-1-1 Marunouchi');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF6', 'Toronto', 'Canadá', 'Norteamérica', 'M5H 2N2', '+1 416-123-4567', '123 Yonge Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF7', 'Berlín', 'Alemania', 'Europa', '10117', '+49 30 12345678', 'Unter den Linden 77');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF8', 'Pekín', 'China', 'Asia', '100000', '+86 10 9876 5432', '1 Changan Avenue');
INSERT INTO  oficina  (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF9', 'Sao Paulo', 'Brasil', 'América del Sur', '01310-100', '+55 11 1234-5678', 'Av. Paulista 123');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF10', 'Moscú', 'Rusia', 'Europa', '101000', '+7 495 987-65-43', 'Red Square, 1');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF11', 'Ciudad de México', 'México', 'América del Norte', '06010', '+52 55 1234 5678', 'Av. Juárez 100');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF12', 'Sidney', 'Australia', 'Oceanía', '2000', '+61 2 9876 5432', 'Circular Quay, Sydney NSW 2000');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF13', 'Ámsterdam', 'Países Bajos', 'Europa', '1012 JS', '+31 20 123 4567', 'Dam Square');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF14', 'Seúl', 'Corea del Sur', 'Asia', '04535', '+82 2 9876 5432', '10 Gukjegeumyung-ro, Jung-gu');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF15', 'Roma', 'Italia', 'Europa', '00187', '+39 06 1234 5678', 'Piazza di Spagna');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF16', 'San Francisco', 'Estados Unidos', 'Norteamérica', '94105', '+1 415-123-4567', '123 Market Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF17', 'Dubái', 'Emiratos Árabes Unidos', 'Asia', '12345', '+971 4 123 4567', 'Sheikh Zayed Road');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF18', 'Toronto', 'Canadá', 'Norteamérica', 'M5H 2N2', '+1 416-123-4567', '123 Yonge Street');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF19', 'Madrid', 'España', 'Europa', '28001', '+34 91 123 45 67', 'Gran Vía 1');
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, direccion1)
VALUES ('OF20', 'Pretoria', 'Sudáfrica', 'África', '0002', '+27 12 345 6789',  'Church Square');

-- insertar dato de empleado 
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (1, 'John', 'Doe', 'Ext1', 'john.doe@example.com', 'OF1', NULL, 'Gerente de Ventas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (2, 'Jane', 'Smith', 'Ext2', 'jane.smith@example.com', 'OF2', 1, 'Asistente de Ventas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (3, 'Michael', 'Johnson', 'Ext3', 'michael.johnson@example.com', 'OF3', NULL, 'Gerente de Marketing');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (4, 'Emily', 'Davis', 'Ext4', 'emily.davis@example.com', 'OF4', 3, 'Especialista en Marketing');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (5, 'David', 'Wilson', 'Ext5', 'david.wilson@example.com', 'OF5', NULL, 'Gerente de Finanzas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (6, 'Linda', 'Brown', 'Ext6', 'linda.brown@example.com', 'OF6', 5, 'Contador Principal');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (7, 'Robert', 'Lee', 'Ext7', 'robert.lee@example.com', 'OF7', NULL, 'Gerente de Operaciones');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (8, 'Susan', 'White', 'Ext8', 'susan.white@example.com', 'OF8', 7, 'Supervisor de Logística');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (9, 'Richard', 'Smith', 'Ext9', 'richard.smith@example.com', 'OF9', NULL, 'Gerente de Recursos Humanos');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (10, 'Jennifer', 'Clark', 'Ext10', 'jennifer.clark@example.com', 'OF10', 9, 'Especialista en RRHH');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (11, 'William', 'Johnson', 'Ext11', 'william.johnson@example.com', 'OF11', NULL, 'Gerente de Ventas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (12, 'Laura', 'Hall', 'Ext12', 'laura.hall@example.com', 'OF12', 11, 'Asistente de Ventas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (13, 'Christopher', 'Anderson', 'Ext13', 'christopher.anderson@example.com', 'OF13', NULL, 'Gerente de Marketing');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (14, 'Megan', 'Martin', 'Ext14', 'megan.martin@example.com', 'OF14', 13, 'Especialista en Marketing');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (15, 'Daniel', 'García', 'Ext15', 'daniel.garcia@example.com', 'OF15', NULL, 'Gerente de Finanzas');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (16, 'Sophia', 'Rodriguez', 'Ext16', 'sophia.rodriguez@example.com', 'OF16', 15, 'Contador Principal');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (17, 'Edward', 'Brown', 'Ext17', 'edward.brown@example.com', 'OF17', NULL, 'Gerente de Operaciones');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (18, 'Olivia', 'Martínez', 'Ext18', 'olivia.martinez@example.com', 'OF18', 17, 'Supervisor de Logística');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (19, 'James', 'Hernández', 'Ext19', 'james.hernandez@example.com', 'OF19', NULL, 'Gerente de Recursos Humanos');
INSERT INTO empleado (codigo_empleado, nombre, apellido1, extension, email, codigo_oficina, codigo_jefe, puesto)
VALUES (20, 'Ava', 'Gómez', 'Ext20', 'ava.gomez@example.com', 'OF20', 19, 'Especialista en RRHH');

-- insertar dato de gama de producto
-- Producto 1: Kit de Herramientas de Jardinería Deluxe
INSERT INTO gama_producto 
( gama,descripcion_texto, imagen)
VALUES (
  'Jardinería_Herramienta',
  'Un conjunto completo de herramientas de alta calidad para jardinería que incluye palas, rastrillos, podadoras y más.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/KitHerramientasJardineríaDeluxe.jpg'
);
-- Producto 2: Plantas de Interior Variadas
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Planta',
  'Una selección de plantas de interior ideales para decorar tu hogar. Incluye plantas suculentas, helechos y cactus.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/PlantasInteriorVariadas.jpg'
);
-- Producto 3: Semillas de Flores Silvestres
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Semilla',
  'Paquete de semillas de flores silvestres que te ayudará a crear un hermoso jardín de flores naturales.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SemillasFloresilvestres.jpg'
);
-- Producto 4: Macetas Decorativas
INSERT INTO gama_producto (gama,descripcion_texto, imagen)
VALUES (
  'Jardinería_Macetas',
  'Una variedad de macetas de cerámica decorativas en diferentes tamaños y colores para realzar la belleza de tus plantas.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/MacetasDecorativas1.jpg'
);
-- Producto 5: Fertilizante Orgánico para Jardín
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Fertilizante_Orgánico_Jardín',
  'Fertilizante orgánico de alta calidad que promueve un crecimiento saludable de las plantas y mejora la fertilidad del suelo.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/FertilizanteOrgánicoparaJardín.jpg'
);
-- Producto 6: Set de Luces Solares para Jardín
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Set_de_Luces_Solares',
  'Un conjunto de luces solares LED que añadirán un toque mágico a tu jardín por la noche.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SetLucesSolaresJardín.jpg'
);
-- Producto 7: Árboles Frutales en Macetas
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Árboles_Frutales',
  'Árboles frutales en macetas que puedes cultivar en tu propio jardín y disfrutar de frutas frescas en casa.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/ÁrbolesFrutalesMacetas.jpg'
);
-- Producto 8: Sustrato de Alta Calidad
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Sustrato_de_Alta_Calidad',
  'Sustrato premium para macetas y jardines que mejora el drenaje y la retención de nutrientes.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SustratoAltaCalidad.jpg'
);
-- Producto 9: Estatuas Decorativas para Jardín
INSERT INTO gama_producto (gama,descripcion_texto, imagen)
VALUES (
  'Jardinería_Estatuas_Decorativas_para_Jardín',
  'Esculturas decorativas para jardín que agregan encanto y personalidad a tu espacio al aire libre.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/EstatuasDecorativasJardín.jpg'
);
-- Producto 10: Sistema de Riego Automático
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Sistema_de_Riego_Automático',
  'Un sistema de riego automático que mantiene tus plantas adecuadamente hidratadas sin esfuerzo.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SistemaRiegoAutomático.jpg'
);
-- Producto 11: Aspersor de Jardín Automático
INSERT INTO gama_producto (gama, descripcion_texto,  imagen)
VALUES (
  'Jardinería_Aspersor_Jardín-Automático',
  'Un aspersor de jardín automático que proporciona un riego uniforme a tu césped y plantas.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/AspersoJardínAutomático.jpg'
);

-- Producto 12: Rosas de Variedad Exclusiva
INSERT INTO gama_producto (gama, descripcion_texto,imagen)
VALUES (
  'Jardinería_Rosas_Variedad_Exclusiva',
  'Una colección de rosas de variedades exclusivas que añadirán elegancia a tu jardín.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/RosasVariedadExclusiva.jpg'
);

-- Producto 13: Set de Macetas Colgantes
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Set_Macetas_Colgantes',
  'Un conjunto de macetas colgantes que te permite crear un jardín vertical impresionante.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SetMacetasColgante.jpg'
);

-- Producto 14: Cortacésped Eléctrico de Alta Potencia
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Cortacésped_Eléctrico_Alta_Potencia',
  'Un cortacésped eléctrico de alta potencia que facilita el cuidado de tu césped.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/CortacéspedEléctricoAltaPotencia.jpg'
);

-- Producto 15: Compostera Doméstica
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Compostera_Doméstica',
  'Una compostera doméstica que te ayuda a reciclar restos de cocina y obtener compost rico en nutrientes para tus plantas.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/Compostera_Doméstica.jpg'
);

-- Producto 16: Set de Herramientas de Podar
INSERT INTO gama_producto (gama, descripcion_texto,imagen)
VALUES (
  'Jardinería_Set_Herramientas_Podar',
  'Un conjunto de herramientas de podar profesionales para mantener tus plantas en forma.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/SetHerramientasPodar.jpg'
);

-- Producto 17: Riego por Goteo Automático
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Riego_por_Goteo_Automático',
  'Un sistema de riego por goteo automático que ahorra agua y mantiene tus plantas hidratadas.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/RiegoGoteoAutomático.jpg'
);

-- Producto 18: Bancos de Jardín de Madera
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Bancos_Jardín_Madera',
  'Bancos de jardín de madera de alta calidad para relajarte al aire libre.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/BancosjardínMadera.jpg'
);
-- Producto 19: Invernadero Portátil
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Invernadero_Portátil',
  'Un invernadero portátil que te permite cultivar plantas durante todo el año.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/InvernaderoPortátil.jpg'
);

-- Producto 20: Abono Orgánico de Granja
INSERT INTO gama_producto (gama, descripcion_texto, imagen)
VALUES (
  'Jardinería_Abono_Orgánico_Granja',
  'Abono orgánico de granja de alta calidad que enriquece el suelo y estimula el crecimiento de las plantas.',
  'C:\Users\MAKAI\Documents/ProductoJardineria/AbonoOrgánicoGranja.jpg'
);
-- insertar dato de cliente 

