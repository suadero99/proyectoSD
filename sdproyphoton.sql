-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2022 a las 16:03:26
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sdproyphoton`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `anuncio_id` mediumint(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(10) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`anuncio_id`, `nombre`, `imagen`, `url`) VALUES
(1, '¡Nosotros atendemos a tu michi! Doctora Cats. Somos especialistas en atender gatos', '1.png', 'https://doctoracats.com.mx/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VtykB1ve6qdC3ziPSPk21WG-YtltvQ17SnLaNdkCq'),
(2, 'En Hospital Veterinario Delta nos preocupamos por tu amigo felino. Trae a tus gatos al mejor lugar.', '2.png', 'https://hospitalveterinariodelta.com.mx/hospital-para-gatos/'),
(3, 'Si tus gatos mal está a nosotros debes visitar. Somos el Centro Veterinario Felino.', '3.png', 'http://www.centroveterinariofelino.com.mx/'),
(4, 'Veterinarios solo para gatos. Visita CEMEGATOS y mira nuestros servicios.', '4.png', 'https://cemegatos.com.mx/'),
(5, 'En AGATAN cuidamos de tus gatos y le damos toda clase de servicios.', '5.png', 'https://agatan.cdmx.gob.mx/agatanhv'),
(6, 'Somos Petzer y bañar perros a domicilio es lo nuestro.', '6.png', 'https://petzer.mx/collections/bano-perros-gatos-domicilio-cdmx'),
(7, 'En PetCare tenemos una estética canina móvil. Tus perros recibirán un buen baño ahí.', '7.png', 'https://www.petcaredf.com/estetica-canina-movil.html'),
(8, '¡Nosotros embellecemos a tu perro!  Pulgosos Estética Canina. (Pulgas no incluidas)', '8.png', 'https://pulgososesteticacanina.com.mx/servicio-de-bano-de-mascotas-a-domicilio'),
(9, '¿Harto de que tu perro huela a perro? El Palacio de las Mascotas se encarga (en especial tus perros)', '9.png', 'http://www.elpalaciodelasmascotas.com/serviciodomicilio.html'),
(10, 'Ruffus & Mila. Ponle clase (e higiene) a tus perros.', '10.png', 'https://www.ruffusandmila.com/estetica'),
(11, 'IMITI. Fiesteros profesionales a tu disposición. Ten la mejor de las fiestas', '11.png', 'https://imiti.com.mx/servicios/'),
(12, 'Graduaciones. Bautizos. XV Años. etc… Déjalo a nosotros. Todo para las fiestas', '12.png', 'https://www.todoparalafiesta.com.mx/'),
(13, 'Festeja en grande los logros de tu pequeño con Come Play. Haz aquí tus fiestas', '13.png', 'https://www.comeplay.com.mx/servicios-salon-de-fiestas-infatiles.html'),
(14, 'Fiestas con globos. Globos en todos lados. Globofiesta: Todos flotan', '14.png', 'https://globofiesta.com/servicios/'),
(15, 'Servicios para fiestas con nosotros. Somos Hipo', '15.png', 'https://www.banquetes.mx/empresas/servicios-para-fiestas-y-eventos-hipo'),
(16, 'Para que no andes en taparrabos compra en Benetton y cambia tu look. Usa la mejor ropa.', '16.png', 'https://mx.benetton.com/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vu0pXLokOTjH3MrgSYw6mIiBO64Tk6tZOARlmUjrclZR'),
(17, 'Productos de ropa directo a tu hogar en Acapella Store', '17.png', 'https://acapella.co/?epaRT=14003293372&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vvpn9hqnD-ieYdfDuUlywVW_5aI--I'),
(18, 'Compra más barato en SHEIN y recibe tu conjunto de ropa en un par de días', '18.png', 'https://www.shein.com.mx/hotsale/Best-Selling-Clothing-sc-00301507.html?url_from=mxadgs18_srsa_Ropa0'),
(19, 'Studio F el hogar de la ropa con descuentos de hasta el 20%', '19.png', 'https://www.studiofmexico.com/ropa?O=OrderByReleaseDateDESC&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs-TFRyLd'),
(20, 'Vendemos ropa y papitas en C&A (Te mentimos: las papitas ya no las vendemos)', '20.png', 'https://www.cyamoda.com/'),
(21, 'Con EnviaFlores.com envía flores a todo el mundo tu mamá tus amigos tu pareja o hasta a tus abuelos.', '21.png', 'https://www.enviaflores.com/?utm_source=google&utm_medium=cpc&utm_campaign=edomex_general&utm_term=b'),
(22, 'Flores a domicilio en Guapa con Flores para que tengas muchas flores', '22.png', 'https://www.guapaconflores.com/collections/flores-a-domicilio?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs60X9v'),
(23, 'Detalles de flores con dulces en Flores cumpleaños para combinar lo dulce con lo bello', '23.png', 'https://www.acentofloral.com.mx/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VvBgF4sBjLqympXFOzCc8qfydI6-AKgBVg2L'),
(24, 'Compra arreglos florales con nosotros. Menta Flores (las flores no huelen a menta)', '24.png', 'https://mentaflores.com/collections/flores?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs2NHddJp5IN08E7-yL2_FTnKP'),
(25, 'Flores de México muy cerca de ti para cuando quieres comprar flores', '25.png', 'https://floresdemexico.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `click`
--

CREATE TABLE `click` (
  `click_id` mediumint(9) NOT NULL,
  `usuario_id` mediumint(9) NOT NULL,
  `anuncio_id` mediumint(9) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `click`
--

INSERT INTO `click` (`click_id`, `usuario_id`, `anuncio_id`, `timestamp`) VALUES
(1, 1, 24, '2022-06-02 02:04:21'),
(2, 1, 6, '2022-06-02 11:22:16'),
(3, 1, 7, '2022-06-02 11:41:18'),
(4, 1, 7, '2022-06-02 11:41:31'),
(5, 1, 1, '2022-06-02 11:46:09'),
(6, 1, 9, '2022-06-02 12:47:35'),
(7, 1, 9, '2022-06-02 12:47:37'),
(8, 1, 9, '2022-06-02 12:47:39'),
(9, 0, 5, '2022-06-02 13:15:52'),
(10, 1, 19, '2022-06-02 13:35:41'),
(11, 1, 19, '2022-06-02 13:35:58'),
(12, 1, 24, '2022-06-02 13:49:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialusuario`
--

CREATE TABLE `historialusuario` (
  `historialusuario_id` mediumint(9) NOT NULL,
  `usuario_id` mediumint(9) NOT NULL,
  `pagina_id` mediumint(9) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historialusuario`
--

INSERT INTO `historialusuario` (`historialusuario_id`, `usuario_id`, `pagina_id`, `timestamp`) VALUES
(1, 1, 1, '2022-06-02 12:47:23'),
(2, 1, 1, '2022-06-02 12:48:03'),
(3, 1, 2, '2022-06-02 12:48:14'),
(4, 0, 1, '2022-06-02 13:15:47'),
(5, 1, 1, '2022-06-02 13:29:16'),
(6, 1, 2, '2022-06-02 13:29:22'),
(7, 1, 1, '2022-06-02 13:35:08'),
(8, 1, 1, '2022-06-02 13:35:12'),
(9, 1, 1, '2022-06-02 13:35:19'),
(10, 1, 16, '2022-06-02 13:47:52'),
(11, 1, 19, '2022-06-02 13:47:59'),
(12, 0, 11, '2022-06-02 13:58:25'),
(13, 0, 13, '2022-06-02 13:58:30'),
(14, 0, 14, '2022-06-02 13:59:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `pagina_id` mediumint(9) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`pagina_id`, `descripcion`, `url`) VALUES
(1, 'Clínica Para Gatos - Veterinaria Experta en Gatos', 'https://doctoracats.com.mx/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VtykB1ve6qdC3ziPSPk21WG-YtltvQ17SnLaNdkCqeIT1OAfcsJ0dMaAjf2EALw_wcB'),
(2, 'Hospital para Gatos - Hospital Veterinario Delta', 'https://hospitalveterinariodelta.com.mx/hospital-para-gatos/'),
(3, 'Centro Veterinario Felino. Servicio de mascotas (gatos, perros, canarios, etc.)', 'http://www.centroveterinariofelino.com.mx/'),
(4, 'CEMEGATOS - cemegatos.com.mx', 'https://cemegatos.com.mx/'),
(5, 'Hospital Veterinario de la Ciudad de México. - AGATAN CDMX (para perros y gatos de todas las edades)', 'https://agatan.cdmx.gob.mx/agatanhv'),
(6, 'Baño para Perro a Domicilio | CDMX - Petzer', 'https://petzer.mx/collections/bano-perros-gatos-domicilio-cdmx'),
(7, 'Estética canina móvil a domicilio CDMX PetCare DF', 'https://www.petcaredf.com/estetica-canina-movil.html'),
(8, 'Servicio De Baño De Mascotas A Domicilio', 'https://pulgososesteticacanina.com.mx/servicio-de-bano-de-mascotas-a-domicilio'),
(9, 'Servicio a Domicilio / Unidad Móvil - El Palacio de las …', 'http://www.elpalaciodelasmascotas.com/serviciodomicilio.html'),
(10, 'Estetica - Ruffus & Mila', 'https://www.ruffusandmila.com/estetica'),
(11, 'Servicios para fiestas y eventos | IMITI', 'https://imiti.com.mx/servicios/'),
(12, 'Todo para la fiesta – Eventos BTL', 'https://www.todoparalafiesta.com.mx/'),
(13, 'Servicios Come Play Salones de Fiestas Infantiles', 'https://www.comeplay.com.mx/servicios-salon-de-fiestas-infatiles.html'),
(14, 'Servicios de decoración de fiestas - Globofiesta', 'https://globofiesta.com/servicios/'),
(15, 'Servicios para Fiestas y Eventos Hipo - Banquetes.mx', 'https://www.banquetes.mx/empresas/servicios-para-fiestas-y-eventos-hipo'),
(16, 'Tienda en Línea - Ropa Primavera/Verano', 'https://mx.benetton.com/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vu0pXLokOTjH3MrgSYw6mIiBO64Tk6tZOARlmUjrclZRcfRKRtjMYYaAuIpEALw_wcB&gclsrc=aw.ds'),
(17, 'Acapella Store - Tienda de Ropa Online', 'https://acapella.co/?epaRT=14003293372&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vvpn9hqnD-ieYdfDuUlywVW_5aI--I8nNRfTO0QaX3gVmtqPRBBaWkaAjXaEALw_wcB'),
(18, 'comprar ropa - SHEIN - Sitio oficial SHEIN', 'https://www.shein.com.mx/hotsale/Best-Selling-Clothing-sc-00301507.html?url_from=mxadgs18_srsa_Ropa01_20210126&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VvLAIdhDFj5JYi9xXC1r7Wj2VHg6mRsxJKj-TJTI82PXweYKg5FrD0aAoJ'),
(19, 'Studio F - Ropa con Estilo', 'https://www.studiofmexico.com/ropa?O=OrderByReleaseDateDESC&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs-TFRyLdTmJtvF5TbtlLdXt4biCGRB_UEdVnExB1XxmwUum1Xx-dkaAsaJEALw_wcB'),
(20, 'C&A México | Tienda De Ropa Calzado Y Accesorios - C&A …', 'https://www.cyamoda.com/'),
(21, 'EnviaFlores.com® - Envio Flores', 'https://www.enviaflores.com/?utm_source=google&utm_medium=cpc&utm_campaign=edomex_general&utm_term=btsimilares&gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VvyTCfgpGYg7981R4CRZk-mjBm-VfFhmLx4HMLM6tCR7BwhqEOllqEaAk5'),
(22, 'Guapa con Flores - Flores a domicilio', 'https://www.guapaconflores.com/collections/flores-a-domicilio?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs60X9vdO49cz3WUtptFq-C3BbB766doTCID30elbRbD_6p-yDf0FEaAocVEALw_wcB'),
(23, 'Flores cumpleaños - Flores y dulces en un clic', 'https://www.acentofloral.com.mx/?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9VvBgF4sBjLqympXFOzCc8qfydI6-AKgBVg2LwH-SOGgfRFohyh7WbwaAsvlEALw_wcB'),
(24, 'Floreria Ciudad de Mexico - Menta Flores', 'https://mentaflores.com/collections/flores?gclid=Cj0KCQjwyMiTBhDKARIsAAJ-9Vs2NHddJp5IN08E7-yL2_FTnKPBtv2Ll_51UPUPqoBzLQZC2N5WCigaAtp2EALw_wcB'),
(25, 'Flores de México | Envío de flores y regalos a domicilio', 'https://floresdemexico.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `query`
--

CREATE TABLE `query` (
  `query_id` mediumint(9) NOT NULL,
  `usuario_id` mediumint(9) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `texto` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `query`
--

INSERT INTO `query` (`query_id`, `usuario_id`, `ip`, `texto`, `timestamp`) VALUES
(1, 1, '::1', 'Gatos', '2022-06-01 05:00:00'),
(2, 1, '::1', 'Perros', '2022-06-01 05:00:00'),
(3, 1, '::1', 'Flores', '2022-06-01 23:59:36'),
(4, 1, '::1', 'Perros', '2022-06-02 00:00:26'),
(5, 1, '::1', 'Perros', '2022-06-02 02:10:45'),
(6, 1, '::1', 'Perros', '2022-06-02 02:19:56'),
(7, 1, '::1', 'Gatos', '2022-06-02 11:21:41'),
(8, 1, '::1', 'Gatos', '2022-06-02 11:22:10'),
(9, 1, '::1', 'Flores', '2022-06-02 11:41:08'),
(10, 1, '::1', 'Ropa', '2022-06-02 11:45:01'),
(11, 1, '::1', 'Gatos', '2022-06-02 12:47:22'),
(15, 1, '::1', 'Perros', '2022-06-02 12:50:01'),
(16, 0, '::1', 'Gatos', '2022-06-02 13:12:01'),
(17, 0, '::1', 'Gatos', '2022-06-02 13:15:45'),
(18, 1, '::1', 'Gatos', '2022-06-02 13:20:28'),
(19, 1, '::1', 'Ropa', '2022-06-02 13:47:26'),
(20, 0, '::1', 'Gatos', '2022-06-02 13:57:29'),
(21, 0, '::1', 'Perro', '2022-06-02 13:57:52'),
(22, 0, '::1', 'Fiestas', '2022-06-02 13:58:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` mediumint(9) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contra` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario`, `contra`, `nombre`, `apellidos`, `admin`) VALUES
(1, 'kiliapplered', '1234', 'Karla Andrea', 'Najera Noyola', 1),
(2, 'suadero99', 'suadero99', 'Luis Froylan', 'Colin Santos', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`anuncio_id`);

--
-- Indices de la tabla `click`
--
ALTER TABLE `click`
  ADD PRIMARY KEY (`click_id`);

--
-- Indices de la tabla `historialusuario`
--
ALTER TABLE `historialusuario`
  ADD PRIMARY KEY (`historialusuario_id`) USING BTREE;

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`pagina_id`);

--
-- Indices de la tabla `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`query_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `anuncio_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `click`
--
ALTER TABLE `click`
  MODIFY `click_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `historialusuario`
--
ALTER TABLE `historialusuario`
  MODIFY `historialusuario_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `pagina_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `query`
--
ALTER TABLE `query`
  MODIFY `query_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
