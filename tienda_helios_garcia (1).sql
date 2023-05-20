#Código elaborado por Helios García

#### Creación de base de datos ----------------------------------------------

# 1° Crear schema --
CREATE DATABASE prueba_retail;
USE prueba_retail;

# 2° Crear tabla clientes
CREATE TABLE clientes (
id_client INT auto_increment primary key not null,
nom_client VARCHAR(20) NOT NULL,
ape_client VARCHAR(30) NOT NULL,
edad_client INT NOT NULL,
sexo_client VARCHAR(9) NOT NULL,
dir_client VARCHAR(100) NOT NULL,
tel_client VARCHAR(20) NOT NULL);

# 3° Crear tabla productos
CREATE TABLE productos (
id_prod INT auto_increment primary key not null, 
precio_prod INT NOT NULL, 
nom_prod VARCHAR(80) NOT NULL,
marc_prod VARCHAR(80) NOT NULL);

#4° Crear tabla tiendas
CREATE TABLE tienda (
id_tienda INT auto_increment primary key NOT NULL,
tipo_tienda varchar(20) NOT NULL,
ubi_tienda varchar(30));

#5° Crear tabla personal
CREATE TABLE personal (
id_vendedor INT auto_increment primary key NOT NULL,
nom_vendedor VARCHAR(30) NOT NULL,
ape_vendedor VARCHAR(30),
edad_vendedor INT,
sexo_vendedor VARCHAR(10),
antiguedad_vendedor INT,
id_tienda INT NOT NULL,
foreign key (id_tienda) references tienda(id_tienda));



#6° Crear tabla ventas
CREATE TABLE ventas (
id_venta INT auto_increment primary key NOT NULL,
id_client INT NOT NULL,
id_tienda INT NOT NULL,
id_vendedor INT,
id_prod INT NOT NULL,
fecha_y_hora_venta DATETIME NOT NULL,
form_pago VARCHAR(20) NOT NULL,
foreign key (id_vendedor) references personal(id_vendedor),
foreign key (id_client) references clientes(id_client),
foreign key (id_tienda) references tienda(id_tienda),
foreign key (id_prod) references productos(id_prod)
);

##### Creación de datos ---------------------------------------------------------------------------

#Insertamos datos en la tabla clientes

INSERT INTO clientes (id_client, nom_client, ape_client, edad_client, sexo_client, dir_client, tel_client)
VALUES 
(1, 'Juan', 'Pérez', 25, 'Masculino', 'Av. Insurgentes #123, Ciudad de México, México', '+52 (55) 1234-5678'),
(2, 'María', 'González', 32, 'Femenino', '123 Main St, Los Angeles, California, USA', '+1 (213) 555-1234'),
(3, 'Pedro', 'Ramírez', 20, 'Masculino', 'Calle 5 de Mayo #456, Guadalajara, México', '+52 (33) 5555-6789'),
(4, 'Laura', 'García', 27, 'Femenino', 'Paseo de la Reforma #789, Ciudad de México, México', '+52 (55) 2345-6789'),
(5, 'Jorge', 'Hernández', 30, 'Masculino', 'Av. Revolución #456, Tijuana, México', '+52 (664) 555-1234'),
(6, 'Ana', 'Martínez', 22, 'Femenino', '456 Park Ave, New York City, New York, USA', '+1 (646) 555-6789'),
(7, 'Diego', 'López', 35, 'Masculino', 'Av. Chapultepec #987, Guadalajara, México', '+52 (33) 4444-5678'),
(8, 'Sofía', 'Díaz', 24, 'Femenino', '123 Oak St, San Francisco, California, USA', '+1 (415) 555-1234'),
(9, 'Carlos', 'Gómez', 40, 'Masculino', 'Av. de los Insurgentes #456, Toluca, México', '+52 (722) 555-6789'),
(10, 'Elena', 'Castillo', 28, 'Femenino', 'Av. Universidad #789, Ciudad de México, México', '+52 (55) 3456-7890'),
(11, 'Fernando', 'Sánchez', 33, 'Masculino', 'Calle 10 #123, Mexicali, México', '+52 (686) 555-1234'),
(12, 'Alejandra', 'Torres', 26, 'Femenino', 'Av. Central #456, San Salvador, El Salvador', '+503 2222-6789'),
(13, 'Miguel', 'Ortega', 29, 'Masculino', 'Blvd. Juárez #789, Chihuahua, México', '+52 (614) 555-1234'),
(14, 'Paola', 'Cortés', 21, 'Femenino', '123 Broadway, New York City, New York, USA', '+1 (212) 555-6789'),
(15, 'Gustavo', 'Rivera', 38, 'Masculino', 'Av. Hidalgo #456, Morelia, México', '+52 (443) 444-5678'),
(16, 'David', 'Hernández', 27, 'Masculino', '555 S Flower St, Los Angeles, California, USA', '+1 (213) 555-4567'),
(17, 'Carmen', 'Ruiz', 22, 'Femenino', 'Av. Constitución #456, Puebla, México', '+52 (222) 555-7890'),
(18, 'Carlos', 'Sánchez', 23, 'Masculino', 'Av. Chapultepec #123, Ciudad de México, México', '+52 (55) 2345-6789'),
(19, 'Fernanda', 'Guzmán', 26, 'Femenino', 'Av. Revolución #456, Tijuana, México', '+52 (664) 555-6789'),
(20, 'Jorge', 'Díaz', 31, 'Masculino', '1258 E Santa Clara St, San José, California, USA', '+1 (408) 555-1234'),
(21, 'Mónica', 'Ortega', 35, 'Femenino', 'Calle 5 de Mayo #789, Guadalajara, México', '+52 (33) 5678-9012'),
(22, 'Eduardo', 'Castro', 19, 'Masculino', 'Av. Universidad #123, Ciudad de México, México', '+52 (55) 3456-7890'),
(23, 'Sofía', 'Herrera', 21, 'Femenino', 'Av. Hidalgo #456, Monterrey, México', '+52 (81) 555-6789'),
(24, 'Pablo', 'Mendoza', 27, 'Masculino', '123 Main St, San Francisco, California, USA', '+1 (415) 555-678'),
(25, 'Ana', 'Sánchez', 27, 'Femenino', 'Blvd. Adolfo López Mateos #789, Tijuana, México', '+52 (664) 555-7890'),
(26, 'Carlos', 'Martínez', 21, 'Masculino', 'Av. Reforma #456, Puebla, México', '+52 (222) 555-5678'),
(27, 'Luisa', 'García', 29, 'Femenino', 'Calle Juárez #234, Monterrey, México', '+52 (81) 5555-1234'),
(28, 'Jorge', 'Hernández', 22, 'Masculino', '1500 Broadway, New York City, New York, USA', '+1 (212) 555-4567'),
(29, 'Margarita', 'López', 33, 'Femenino', 'Av. Revolución #789, Tijuana, México', '+52 (664) 555-2345'),
(30, 'Antonio', 'Díaz', 28, 'Masculino', '1234 Elm St, Dallas, Texas, USA', '+1 (214) 555-7890'),
(31, 'Rosa', 'Gómez', 30, 'Femenino', 'Calle 16 de Septiembre #345, Guadalajara, México', '+52 (33) 5555-3456'),
(32, 'Hugo', 'García', 19, 'Masculino', 'Av. Hidalgo #567, Ciudad de México, México', '+52 (55) 5555-6789'),
(33, 'Lorena', 'Hernández', 24, 'Femenino', 'Av. Insurgentes Sur #234, Ciudad de México, México', '+52 (55) 1234-5678'),
(34, 'Mauricio', 'Ruiz', 26, 'Masculino', '1234 Main St, Los Angeles, California, USA', '+1 (213) 555-2345'),
(35, 'Fernanda', 'Pérez', 31, 'Femenino', 'Av. Constitución #789, Monterrey, México', '+52 (81) 5555-9012'),
(36, 'Sofía', 'Martínez', 19, 'Femenino', 'Av. Juárez #789, Ciudad de México, México', '+52 (55) 2345-6789'),
(37, 'Alejandro', 'Hernández', 27, 'Masculino', '456 Main St, Houston, Texas, USA', '+1 (713) 555-4567'),
(38, 'Adriana', 'López', 28, 'Femenino', 'Av. Reforma #234, Ciudad de México, México', '+52 (55) 3456-7890'),
(39, 'David', 'García', 30, 'Masculino', '789 Broadway, New York, New York, USA', '+1 (212) 555-7890'),
(40, 'Laura', 'Díaz', 29, 'Femenino', 'Calle 23 #456, Monterrey, México', '+52 (81) 5555-2345'),
(41, 'José', 'Rodríguez', 26, 'Masculino', 'Av. Hidalgo #789, Ciudad de México, México', '+52 (55) 4567-8901'),
(42, 'Ana', 'Sánchez', 31, 'Femenino', '123 Main St, San Francisco, California, USA', '+1 (415) 555-1234'),
(43, 'Miguel', 'Pérez', 22, 'Masculino', 'Calle 10 #234, Cancún, México', '+52 (998) 555-6789'),
(44, 'Carmen', 'Gutiérrez', 24, 'Femenino', 'Av. Constitución #456, Guadalajara, México', '+52 (33) 4567-8901'),
(45, 'Jorge', 'Romero', 29, 'Masculino', '789 Main St, Miami, Florida, USA', '+1 (305) 555-7890'),
(46, 'Lucía', 'Gómez', 23, 'Femenino', 'Av. López Mateos #789, Ciudad de México, México', '+52 (55) 5678-9012'),
(47, 'Fernando', 'Mendoza', 28, 'Masculino', '456 Main St, Chicago, Illinois, USA', '+1 (312) 555-4567'),
(48, 'Laura', 'García', 40, 'Femenino', 'Av. Reforma #456, Puebla, México', '+52 (222) 345-6789'),
(49, 'Roberto', 'González', 22, 'Masculino', 'Av. Juárez #101, Monterrey, México', '+52 (81) 5555-6789'),
(50, 'Mónica', 'Pérez', 35, 'Femenino', '123 Main St, New York, New York, USA', '+1 (212) 555-1234'),
(51, 'Jorge', 'Sánchez', 26, 'Masculino', 'Av. Tecnológico #456, León, México', '+52 (477) 555-6789'),
(52, 'Patricia', 'Gómez', 23, 'Femenino', 'Av. Las Américas #789, Cancún, México', '+52 (998) 345-6789'),
(53, 'Fernando', 'Díaz', 29, 'Masculino', 'Av. Revolución #101, Tijuana, México', '+52 (664) 555-6789'),
(54, 'Silvia', 'Herrera', 31, 'Femenino', '456 Market St, San Francisco, California, USA', '+1 (415) 555-7890'),
(55, 'Ricardo', 'López', 33, 'Masculino', 'Av. Hidalgo #789, Guanajuato, México', '+52 (473) 555-6789'),
(56, 'Martha', 'Castillo', 40, 'Femenino', 'Av. Constitución #456, Morelia, México', '+52 (443) 345-6789'),
(57, 'Alejandro', 'Fernández', 27, 'Masculino', '123 Main St, Seattle, Washington, USA', '+1 (206) 555-1234'),
(58, 'Mónica', 'Pérez', 35, 'Femenino', '123 Main St, New York, New York, USA', '+1 (212) 555-1234'),
(59, 'Jorge', 'Sánchez', 26, 'Masculino', 'Av. Tecnológico #456, León, México', '+52 (477) 555-6789'),
(60, 'Patricia', 'Gómez', 23, 'Femenino', 'Av. Las Américas #700, Cancún, México', '+52 (998) 345-6789'),
(71, 'Fernando', 'Díaz', 29, 'Masculino', 'Av. Revolución #101, Tijuana, México', '+52 (664) 555-6789'),
(72, 'Silvia', 'Herrera', 31, 'Femenino', '456 Market St, San Francisco, California, USA', '+1 (415) 555-7890'),
(73, 'Ricardo', 'López', 33, 'Masculino', 'Av. Hidalgo #600, Guanajuato, México', '+52 (473) 555-6789'),
(74, 'Martha', 'Castillo', 40, 'Femenino', 'Av. Constitución #456, Morelia, México', '+52 (443) 345-6789'),
(75, 'Alejandro', 'Fernández', 27, 'Masculino', '123 Main St, Seattle, Washington, USA', '+1 (206) 555-1234'),
(76, 'Ana', 'Sánchez', 28, 'Femenino', 'Av. Chapultepec #789, México City, México', '+52 (55) 2345-6789'),
(77, 'Carlos', 'González', 30, 'Masculino', '321 Pine St, San Francisco, California, USA', '+1 (415) 555-5678'),
(78, 'Laura', 'Flores', 40, 'Femenino', 'Av. Reforma #456, Puebla, México', '+52 (222) 345-6789'),
(79, 'Roberto', 'Pérez', 22, 'Masculino', 'Av. Juárez #101, Monterrey, México', '+52 (81) 5555-6789'),
(80, 'Mónica', 'López', 35, 'Femenino', '123 Main St, New York, New York, USA', '+1 (212) 555-1234'),
(81, 'Jorge', 'Gómez', 26, 'Masculino', 'Av. Tecnológico #456, León, México', '+52 (477) 555-6789'),
(82, 'Patricia', 'Díaz', 23, 'Femenino', 'Av. Las Américas #789, Cancún, México', '+52 (998) 345-6789'),
(83, 'Fernando', 'Gutiérrez', 29, 'Masculino', 'Av. Revolución #101, Tijuana, México', '+52 (664) 555-6789'),
(84, 'Silvia', 'Santos', 31, 'Femenino', '456 Market St, San Francisco, California, USA', '+1 (415) 555-7890'),
(85, 'Ricardo', 'Castro', 33, 'Masculino', 'Av. Hidalgo #789, Guanajuato, México', '+52 (473) 555-6789'),
(86, 'Martha', 'Guzmán', 40, 'Femenino', 'Av. Constitución #456, Morelia, México', '+52 (443) 345-6789'),
(87, 'Alejandro', 'Torres', 27, 'Masculino', '123 Main St, Seattle, Washington, USA', '+1 (206) 555-1234'),
(88, 'Maria', 'Gonzalez', 30, 'femenino', 'Calle 23 de Mayo 456, Bogota, Colombia', '+57 (1) 234-5678'),
(89, 'Pedro', 'Ramirez', 28, 'masculino', 'Av. Francisco de Miranda 789, Caracas, Venezuela', '+58 (212) 345-6789'),
(90, 'Ana', 'Garcia', 20, 'femenino', 'Rua Augusta 456, Sao Paulo, Brazil', '+55 (11) 2345-6789'),
(91, 'Luis', 'Hernandez', 35, 'masculino', 'Carrera 7 # 33-40, Bogota, Colombia', '+57 (1) 345-6789'),
(92, 'Sofia', 'Lopez', 27, 'femenino', 'Calle 50 # 23-20, Medellin, Colombia', '+57 (4) 234-5678'),
(93, 'Miguel', 'Gonzalez', 22, 'masculino', 'Av. Arequipa 789, Lima, Peru', '+51 (1) 234-5678'),
(94, 'Lucia', 'Martinez', 29, 'femenino', 'Calle 12 de Octubre 345, Quito, Ecuador', '+593 (2) 234-5678'),
(95, 'Carlos', 'Sanchez', 33, 'masculino', 'Av. Las Condes 1234, Santiago, Chile', '+56 (2) 234-5678'),
(96, 'Isabella', 'Garcia', 26, 'femenino', 'Calle 72 # 10-34, Bogota, Colombia', '+57 (1) 234-5678'),
(97, 'Jorge', 'Martinez', 40, 'masculino', 'Av. Brasil 567, Lima, Peru', '+51 (1) 345-6789'),
(98, 'Roberto', 'Hernández', 32, 'Masculino', 'Calle 456, Guadalajara', '+52 (33) 1234 5678'),
(99, 'Isabela', 'Torres', 19, 'Femenino', 'Avenida 12, Ciudad de México', '+52 (55) 1234 5678'),
(100, 'Pedro', 'Rodríguez', 30, 'Masculino', 'Carrera 789, Bogotá, Colombia', '+57 (1) 123 4567');

# Insertmos datos en la tabla productos 

INSERT INTO productos (id_prod, precio_prod, nom_prod, marc_prod)
VALUES
  (1, 79.99, 'Lámpara de mesa', 'Threshold'),
  (2, 399.99, 'Computadora portátil', 'HP'),
  (3, 29.99, 'Cortina de baño', 'InterDesign'),
  (4, 599.99, 'Televisor de alta definición', 'Sony'),
  (5, 49.99, 'Juego de toallas', 'Fieldcrest'),
  (6, 129.99, 'Impresora todo-en-uno', 'Canon'),
  (7, 699.99, 'Reproductor de Blu-ray', 'LG'),
  (8, 149.99, 'Juego de ollas antiadherentes', 'T-fal'),
  (9, 199.99, 'Ventilador de torre', 'Dyson'),
  (10, 499.99, 'Sofá seccional de cuero', 'Ashley Furniture'),
  (11, 249.99, 'Robot de cocina', 'Ninja'),
  (12, 19.99, 'Juego de funda nórdica', 'Room Essentials'),
  (13, 129.99, 'Cafetera programable', 'Cuisinart'),
  (14, 349.99, 'Refrigerador de acero inoxidable', 'Samsung'),
  (15, 59.99, 'Juego de platos de cena', 'Corelle'),
  (16, 299.99, 'Aspiradora robot', 'iRobot'),
  (17, 119.99, 'Báscula digital de baño', 'Etekcity'),
  (18, 599.99, 'Lavadora de carga frontal', 'LG'),
  (19, 249.99, 'Altavoz inteligente', 'Amazon Echo'),
  (20, 99.99, 'Hervidor de agua eléctrico', 'Hamilton Beach'),
  (21, 699.99, 'Sistema de cine en casa', 'Samsung'),
  (22, 39.99, 'Juego de toallas de baño', 'Opalhouse'),
  (23, 799.99, 'Refrigerador de puerta francesa', 'Whirlpool'),
  (24, 149.99, 'Batidora de mano', 'KitchenAid'),
  (25, 59.99, 'Espejo de pared', 'Project 62'),
  (26, 249.99, 'Tablet', 'Apple iPad'),
  (27, 499.99, 'Cámara sin espejo', 'Sony Alpha'),
  (28, 89.99, 'Aspiradora de mano', 'Shark'),
  (29, 79.99, 'Lámpara de pie', 'Adesso'),
  (30, 399.99, 'Consola de videojuegos', 'PlayStation'),
  (31, 49.99, 'Cortina de ducha estampada', 'Threshold'),
  (32, 299.99, 'Laptop 2 en 1', 'Lenovo'),
  (33, 19.99, 'Juego de toallas de mano', 'Room Essentials'),
  (34, 799.99, 'Refrigerador de acero inoxidable', 'LG'),
  (35, 129.99, 'Licuadora de alta velocidad', 'Ninja'),
  (36, 399.99, 'Televisor OLED de alta definición', 'Sony'),
  (37, 59.99, 'Juego de sábanas de algodón', 'Fieldcrest'),
  (38, 699.99, 'Sistema de sonido para el hogar', 'Bose'),
  (39, 149.99, 'Juego de ollas y sartenes de acero inoxidable', 'Cuisinart'),
  (40, 199.99, 'Aspiradora inalámbrica', 'Dyson'),
  (41, 499.99, 'Sofá seccional modular', 'AllModern'),
  (42, 129.99, 'Cafetera automática', 'DeLonghi'),
  (43, 29.99, 'Juego de cortinas de ventana', 'Opalhouse'),
  (44, 599.99, 'Reproductor de Blu-ray 4K', 'Sony'),
  (45, 79.99, 'Set de 3 lámparas de mesa', 'Room Essentials'),
  (46, 349.99, 'Lavadora de carga superior', 'Whirlpool'),
  (47, 119.99, 'Aspiradora robot con mapeo inteligente', 'Eufy'),
  (48, 799.99, 'Refrigerador de puerta francesa con dispensador de agua', 'Samsung'),
  (49, 249.99, 'Altavoz portátil resistente al agua', 'JBL'),
  (50, 99.99, 'Cafetera de goteo programable', 'Hamilton Beach'),
  (51, 699.99, 'Sistema de cine en casa 5.1', 'Yamaha'),
  (52, 39.99, 'Juego de toallas de mano de algodón', 'Threshold'),
  (53, 599.99, 'Lavadora-secadora todo en uno', 'LG'),
  (54, 149.99, 'Batidora de pie de 10 velocidades', 'KitchenAid'),
  (55, 59.99, 'Espejo de maquillaje con luz LED', 'Conair'),
  (56, 249.99, 'Tablet con pantalla Full HD', 'Samsung Galaxy Tab'),
  (57, 499.99, 'Cámara digital réflex', 'Canon EOS'),
  (58, 39.99, 'Zapatos de tacón', 'Nine West'),
  (59, 299.99, 'Televisor inteligente', 'Samsung'),
  (60, 149.99, 'Tablet', 'Amazon Fire'),
  (61, 79.99, 'Batería de cocina de acero inoxidable', 'Tramontina'),
  (62, 499.99, 'Sofá seccional', 'Ashley Furniture'),
  (63, 29.99, 'Mochila escolar', 'JanSport'),
  (64, 199.99, 'Aspiradora de mano', 'Dyson'),
  (65, 399.99, 'Refrigerador de dos puertas', 'LG'),
  (66, 149.99, 'Juego de sábanas', 'Wamsutta'),
  (67, 129.99, 'Microondas de acero inoxidable', 'Whirlpool'),
  (68, 79.99, 'Bicicleta de montaña', 'Schwinn'),
  (69, 599.99, 'Lavadora de carga frontal', 'Samsung'),
  (70, 249.99, 'Robot de cocina', 'Ninja'),
  (71, 89.99, 'Altavoz Bluetooth', 'JBL'),
  (72, 499.99, 'Cámara réflex digital', 'Canon'),
  (73, 499.99, 'Smartphone de alta gama', 'Samsung Galaxy'),
  (74, 29.99, 'Set de 3 toallas de baño', 'Threshold'),
  (75, 199.99, 'Robot aspirador con mapeo láser', 'iRobot Roomba'),
  (76, 799.99, 'Refrigerador de puerta francesa con cajón de congelación', 'LG'),
  (77, 399.99, 'Televisor LED de alta definición', 'Vizio'),
  (78, 149.99, 'Aspiradora inalámbrica para mascotas', 'Bissell'),
  (79, 39.99, 'Juego de cortinas opacas', 'Eclipse'),
  (80, 299.99, 'Tablet con pantalla HD', 'Lenovo Tab'),
  (81, 69.99, 'Cafetera de cápsulas con espumador de leche', 'Nespresso'),
  (82, 599.99, 'Lavadora de carga frontal con vapor', 'Samsung'),
  (83, 99.99, 'Juego de sábanas de algodón satinado', 'Fieldcrest'),
  (84, 349.99, 'Sistema de sonido para el hogar con subwoofer inalámbrico', 'Vizio'),
  (85, 49.99, 'Juego de toallas de mano de algodón', 'Opalhouse'),
  (86, 899.99, 'Sofá de cuero seccional', 'West Elm'),
  (87, 149.99, 'Batidora de inmersión de alta potencia', 'Breville'),
  (88, 199.99, 'Aspiradora sin cable con filtro HEPA', 'Shark'),
  (89, 499.99, 'Televisor OLED de alta definición con sonido envolvente', 'LG'),
  (90, 79.99, 'Juego de edredón de microfibra con estampado', 'Room Essentials'),
  (91, 299.99, 'Laptop de 15 pulgadas', 'HP'),
  (92, 59.99, 'Set de 3 lámparas de mesa de cristal', 'Threshold'),
  (93, 399.99, 'Sistema de sonido envolvente con tecnología Dolby Atmos', 'Onkyo'),
  (94, 129.99, 'Robot aspirador y fregona todo en uno', 'Ecovacs'),
  (95, 699.99, 'Refrigerador inteligente con pantalla táctil', 'Samsung Family Hub'),
  (96, 29.99, 'Juego de funda de almohada de algodón', 'Vianna'),
  (97, 449.99, 'Barra de sonido de alta potencia', 'Sony'),
  (98, 29.99, 'Calcetines de running', 'Nike'),
  (99, 99.99, 'Zapatillas de baloncesto', 'Adidas'),
  (100, 39.99, 'Camiseta de fútbol', 'Puma');

#Insertar datos en la tabla tiendas
INSERT INTO tienda (id_tienda, tipo_tienda, ubi_tienda)
VALUES
(1, "Online", NULL),
(2, "Física", "Ciudad de México"),
(3, "Física", "Los Angeles");

#Insertamos datos en la tabla de personal

INSERT INTO personal (id_vendedor, nom_vendedor, ape_vendedor, edad_vendedor, sexo_vendedor, antiguedad_vendedor, id_tienda)
VALUES 
(1, 'online', NULL, NULL, NULL, NULL, 1),
(2, 'María', 'García', 28, 'Femenino', 5, 2),
(3, 'Pedro', 'Martínez', 32, 'Masculino', 10, 2),
(4, 'Ana', 'López', 27, 'Femenino', 3, 2),
(5, 'Jorge', 'Gómez', 30, 'Masculino', 6, 2),
(6, 'Laura', 'Sánchez', 22, 'Femenino', 1, 2),
(7, 'Carlos', 'Hernández', 33, 'Masculino', 8, 2),
(8, 'Isabel', 'Torres', 26, 'Femenino', 4, 2),
(9, 'Miguel', 'Ruiz', 31, 'Masculino', 7, 2),
(10, 'Sara', 'Navarro', 29, 'Femenino', 3, 2),
(11, 'Fernando', 'González', 34, 'Masculino', 9, 2),
(12, 'Elena', 'Jiménez', 23, 'Femenino', 2, 2),
(13, 'Francisco', 'Moreno', 37, 'Masculino', 12, 2),
(14, 'Lucía', 'Romero', 24, 'Femenino', 1, 2),
(15, 'Antonio', 'Santos', 28, 'Masculino', 5, 2),
(16, 'Carmen', 'Castillo', 31, 'Femenino', 7, 2),
(17, 'David', 'Garrido', 26, 'Masculino', 4, 2),
(18, 'Raquel', 'Cortés', 30, 'Femenino', 6, 2),
(19, 'Javier', 'Sáez', 33, 'Masculino', 9, 2),
(20, 'Marta', 'Gutiérrez', 29, 'Femenino', 3, 2),
(21, 'Alberto', 'Ortega', 35, 'Masculino', 11, 2),
(22, 'Paula', 'Herrera', 27, 'Femenino', 2, 3),
(23, 'Rubén', 'Montes', 31, 'Masculino', 7, 3),
(24, 'Lorena', 'Vargas', 26, 'Femenino', 4, 3),
(25, 'José', 'Blanco', 30, 'Masculino', 6, 3),
(26, 'Alicia', 'Fernández', 28, 'Femenino', 5, 3),
(27, 'Sergio', 'Santana', 34, 'Masculino', 10, 3),
(28, 'Cristina', 'Rojas', 23, 'Femenino', 1, 3),
(29, 'Juan', 'García', 32, 'Masculino', 5, 3),
(30, 'Ana', 'López', 28, 'Femenino', 3, 3),
(31, 'Miguel', 'Pérez', 35, 'Masculino', 8, 3),
(32, 'Carmen', 'Rodríguez', 29, 'Femenino', 4, 3),
(33, 'David', 'González', 27, 'Masculino', 2, 3),
(34, 'Sofía', 'Martínez', 31, 'Femenino', 6, 3),
(35, 'Diego', 'Sánchez', 30, 'Masculino', 7, 3),
(36, 'Laura', 'Flores', 26, 'Femenino', 1, 3),
(37, 'Javier', 'Gómez', 33, 'Masculino', 4, 3),
(38, 'María', 'Ruiz', 27, 'Femenino', 2, 3),
(39, 'Manuel', 'Hernández', 34, 'Masculino', 6, 3),
(40, 'Juan', 'Gómez', 28, 'Masculino', 3, 3),
(41, 'María', 'Fernández', 30, 'Femenino', 2, 3),
(42, 'Pablo', 'Torres', 27, 'Masculino', 1, 3),
(43, 'Lucía', 'García', 25, 'Femenino', 4, 3),
(44, 'David', 'Hernández', 32, 'Masculino', 6, 3),
(45, 'Laura', 'González', 29, 'Femenino', 2, 3),
(46, 'Santiago', 'López', 33, 'Masculino', 4, 3),
(47, 'Ana', 'Martínez', 28, 'Femenino', 5, 3),
(48, 'Luis', 'Sánchez', 31, 'Masculino', 2, 3),
(49, 'Carmen', 'Ruiz', 26, 'Femenino', 3, 3),
(50, 'Carlos', 'Jiménez', 29, 'Masculino', 1, 3);


#Insertar datos en la tabla de venta con la herramienta tabla data import wizard

#Prueba que funciona
#select * from clientes;
#select* from personal;
#select* from productos;
#select* from tienda;
#select* from ventas;

----- Creación de Vistas -------------------------------------------------------------------------------------
USE prueba_retail;

#1° Promedio de edad de los vendedores según tienda 
create or replace view promedio_edad_vendedores_por_tienda as
select avg(edad_vendedor) as promedio_edad_vendedores, a.ubi_tienda as tienda  
from tienda as a 
left join personal as b on b.id_tienda = a.id_tienda
where a.ubi_tienda = "Ciudad de México" & "Los Angeles" 
group by a.ubi_tienda
;

#2° Total de ventas por tipo de tienda
create or replace view total_ventas_por_tienda as 
select a.id_tienda, a.tipo_tienda, count(a.tipo_tienda) as ventas from tienda as a
left join ventas as b on b.id_tienda = a.id_tienda
group by a.id_tienda
;

#3° Total de ventas de cada producto
create or replace view total_venta_productos as
select a.id_prod, a.nom_prod, count(a.id_prod) as ventas from productos as a
left join ventas as b on b.id_prod = a.id_prod
group by a.id_prod, a.nom_prod;

#4° Promedio del precio de todos los productos que compraron los clientes según sexo
create or replace view promedio_precio_productos_por_sexo as
select a.sexo_client, avg(d.precio_prod) as promedio_precio_productos_comprados from clientes as a
left join(
select b.id_client, b.id_venta,b.id_prod,c.precio_prod,c.nom_prod from ventas as b
left join productos as c on c.id_prod = b.id_prod 
) as d on d.id_client = a.id_client
group by a.sexo_client
;

#5° Total de dinero vendido por forma de pago
create or replace view total_ventas_por_forma_de_pago as 
select a.form_pago, sum(b.precio_prod) as dinero_vendido from ventas as a
left join productos as b on b.id_prod = a.id_prod 
group by a.form_pago;

##### Creación de funciones -------------------------------------------------------------------------------

#1° Función para obtener la forma de pago de cada venta ----

USE prueba_retail;

DELIMITER $$
CREATE FUNCTION `forma_pago_ventas` (id_venta_a INT)
RETURNS varchar(20)
DETERMINISTIC
BEGIN
		DECLARE forma_de_pago varchar(20);
        
        SELECT form_pago
        INTO forma_de_pago
        FROM ventas
        WHERE id_venta = id_venta_a;
        RETURN forma_de_pago;

END$$
DELIMITER ;

# Pobrar la función ----

#select prueba_retail.forma_pago_ventas(1);
#select prueba_retail.forma_pago_ventas(56);

# 2° Función para obtener el nombre completo de cada cliente
 
DELIMITER $$
CREATE FUNCTION `nombre_completo` (id_client_a INT)
RETURNS varchar(40)
DETERMINISTIC
BEGIN
		DECLARE nombre_completo varchar(40);
        
        SELECT concat(nom_client, " ", ape_client)
        INTO nombre_completo
        FROM clientes
        WHERE id_client = id_client_a;
        RETURN nombre_completo;

END$$
DELIMITER ;

#Pueba de la función

#select prueba_retail.nombre_completo(1);
#select prueba_retail.nombre_completo(100);


#3° Función para ver el nombre completo del cliente según el id de la venta

DELIMITER $$
CREATE FUNCTION `nombre_completo_segun_venta` (id_venta_a INT)
RETURNS varchar(40)
DETERMINISTIC
BEGIN
		DECLARE nombre_completo_venta varchar(40);
        
        select concat(a.nom_client, " ", a.ape_client)
        into nombre_completo_venta
		from clientes as a
		left join ventas as b on b.id_client = a.id_client
		where b.id_venta = id_venta_a;
        return nombre_completo_venta;
END$$
DELIMITER ;

#Prueba de la función ----

#select prueba_retail.nombre_completo_segun_venta(1);

#### Creación de S.P. ------------------------------------------------------------------------------------------

#1° Ordenamiento de la tabla productos

DELIMITER // 
#Creamos el procedimiento
create procedure ordenamiento_productos (IN campo_a_ordenar varchar(20) ,IN orden BOOLEAN)
#Orden: 1 = ASC y 0 = desc

#Condiciones para consultar la tabla de productos 
BEGIN 
	IF campo_a_ordenar <> "" AND orden = 1  THEN
		SET @ordenar = concat("ORDER BY ", campo_a_ordenar);
	elseif campo_a_ordenar <> "" AND orden = 0 THEN
		SET @ordenar = concat("ORDER BY ", campo_a_ordenar, " DESC");
	ELSE 
		SET @ordenar = " ";
	END IF;
    SET @clausula_select = concat("SELECT * FROM productos ", @ordenar);
    
    #proceso de ejecución
	prepare ejecucion from @clausula_select;
    execute ejecucion;
    deallocate prepare ejecucion;
END //
DELIMITER ;

#Prueba de S.P.
#call prueba_retail.ordenamiento_productos("nom_prod", 0);
#call prueba_retail.ordenamiento_productos("nom_prod", 1);
        
 # 2° Inserción de datos 
#Para la tabla de productos 
DELIMITER $$
CREATE PROCEDURE insertar_productos (IN id_prod INT, IN precio_prod INT, IN nom_prod varchar(80), IN marc_prod varchar(80))
BEGIN
  INSERT INTO productos (id_prod, precio_prod, nom_prod, marc_prod) VALUES (id_prod, precio_prod, nom_prod, marc_prod);
END $$
DELIMITER ;

#Prueba ---
#CALL insertar_productos(101,100, "Molcajete", "Tradicional MX");
#select* from productos where id_prod = 101;

#Para la tabla de ventas
DELIMITER $$
CREATE PROCEDURE insertar_ventas (IN id_venta INT, IN id_client INT, IN id_tienda INT, 
									IN id_vendedor INT, IN id_prod INT, IN fecha_y_hora_venta datetime, 
                                    In form_pago varchar(20))
BEGIN
  INSERT INTO ventas (id_venta, id_client, id_tienda, id_vendedor, id_prod, fecha_y_hora_venta, form_pago) 
  VALUES (id_venta, id_client, id_tienda, id_vendedor, id_prod, fecha_y_hora_venta, form_pago);
END $$
DELIMITER ;

#Prueba
#call insertar_ventas(1134, 1, 1, 1, 101, now(), 'Tarj. Credito');
#select* from ventas;

#### TRIGGERS ----------------------------------------------------------------------------------------------------

#1° TRIGGERS para registrar los cambios en la tabla de productos

#Creación de la tabla log para la tabla de productos. Se ingresarán los movimentos

create table logs_productos (
	id int unsigned NOT NULL auto_increment,
    accion varchar(45) NOT NULL,
    usuario varchar(45) NOT NULL,
    detalle varchar(100) NOT NULL,
    fecha datetime NOT NULL,
    primary key (id)
);

#Log de inserción de auditoria de registro de nuevos productos, definiendo la acción, usuario, detalle y fecha
DELIMITER $$
create trigger logs_after_productos
after insert on productos
for each row
begin
	insert into logs_productos (id, accion, usuario, detalle, fecha)
    values
    (NULL, "Insert", system_user(), concat("Se insertó el producto ", NEW.id_prod), NOW()
    );
END $$
DELIMITER ;

#Log de eliminación de datos de la tabla de productos, definiendo la acción, usuario, detalle y fecha
DELIMITER $$
create trigger logs_delete_productos
before delete on productos
for each row
begin
	insert into logs_productos (accion, usuario, detalle, fecha)
    values ("Delete", system_user(), concat("Se eliminó el producto ", old.id_prod), now());
end $$
DELIMITER ;

#Prueba
#CALL insertar_productos(103,1002, "Salsa picante", "La costeña");
#delete from productos  where id_prod = 103 and precio_prod = 1002;
#select * from logs_productos;

#2° TRGGERS para identifcar cambios en la tabla de ventas -----

#Creación de la tabla log para la tabla de ventas. Se ingresarán los movimentos

create table logs_ventas (
	id int unsigned NOT NULL auto_increment,
    accion varchar(45) NOT NULL,
    usuario varchar(45) NOT NULL,
    detalle varchar(100) NOT NULL,
    fecha datetime NOT NULL,
    primary key (id)
);

#Log de inserción de auditoria de registro de nuevas ventas, definiendo la acción, usuario, detalle y fecha
DELIMITER $$
create trigger logs_after_ventas
after insert on ventas
for each row
begin
	insert into logs_ventas (id, accion, usuario, detalle, fecha)
    values
    (NULL, "Insert", system_user(), concat("Se insertó la venta ", NEW.id_venta), NOW()
    );
END $$
DELIMITER ;

#Log de eliminación de datos de la tabla de productos, definiendo la acción, usuario, detalle y fecha
DELIMITER $$
create trigger logs_delete_ventas
before delete on ventas
for each row
begin
	insert into logs_ventas (accion, usuario, detalle, fecha)
    values ("Delete", system_user(), concat("Se eliminó el producto ", old.id_venta), now());
end $$
DELIMITER ;

#Prueba
#call insertar_ventas(1135, 2, 1, 1, 101, now(), 'Tarj. Credito');
#delete from ventas  where id_venta = 1135;
#select * from logs_ventas;

#### DLC Creación de Permisos -------------------------------------------------------------------------------------------

#1° Creación de los usuarios

create user usuario_lectura@localhost identified by "1234"; #Usuario de solo lectura
create user usuario_permisos@localhost identified by "12345"; #Usuario con permisos

#2° Verificación que existen 

select * from mysql.user where user = "usuario_lectura";
select * from mysql.user where user = "usuario_permisos";

#3* Asignación de permisos

#Permisos de solo lectura para usuario_lectura
grant select on prueba_retail.clientes to usuario_lectura@localhost;
grant select on prueba_retail.personal to usuario_lectura@localhost;
grant select on prueba_retail.productos to usuario_lectura@localhost;
grant select on prueba_retail.tienda to usuario_lectura@localhost;
grant select on prueba_retail.ventas to usuario_lectura@localhost;

#Verificar los permisos
show grants for usuario_lectura@localhost;


#Permisos de lectura, insert y update para usuario_permisos
grant select, update, insert on prueba_retail.clientes to usuario_permisos@localhost;
grant select, update, insert on prueba_retail.personal to usuario_permisos@localhost;
grant select, update, insert on prueba_retail.productos to usuario_permisos@localhost;
grant select, update, insert on prueba_retail.tienda to usuario_permisos@localhost;
grant select, update, insert on prueba_retail.ventas to usuario_permisos@localhost;

#Verificar los permisos
show grants for usuario_permisos@localhost;