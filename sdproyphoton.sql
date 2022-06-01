-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2022 a las 03:47:15
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

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
  `imagen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`anuncio_id`, `nombre`, `imagen`) VALUES
(1, '¡Nosotros atendemos a tu michi! Doctora Cats. Somos especialistas en atender gatos', '1.png'),
(2, 'En Hospital Veterinario Delta nos preocupamos por tu amigo felino.', '2.png'),
(3, 'Si tu gato mal está a nosotros debes visitar. Somos el Centro Veterinario Felino.', '3.png'),
(4, 'Veterinarios solo para gatos. Visita CEMEGATOS y mira nuestros servicios.', '4.png'),
(5, 'En AGATAN cuidamos de tu gato y le damos toda clase de servicios.', '5.png'),
(6, 'Somos Petzer y bañar perros a domicilio es lo nuestro.', '6.png'),
(7, 'En PetCare tenemos una estética canina móvil. Tu perro recibirá un buen baño ahí.', '7.png'),
(8, '¡Nosotros embellecemos a tu perro!  Pulgosos Estética Canina. (Pulgas no incluidas)', '8.png'),
(9, '¿Harto de que tu perro huela a perro? El Palacio de las Mascotas se encarga', '9.png'),
(10, 'Ruffus & Mila. Ponle clase (e higiene) a tu perro.', '10.png'),
(11, 'IMITI. Fiesteros profesionales a tu disposición.', '11.png'),
(12, 'Graduaciones. Bautizos. XV Años. etc… Déjalo a nosotros. Todo para la fiesta', '12.png'),
(13, 'Festeja en grande los logros de tu pequeño con Come Play', '13.png'),
(14, 'Fiestas con globos. Globos en todos lados. Globofiesta: Todos flotan', '14.png'),
(15, 'Servicios para fiestas con nosotros. Somos Hipo', '15.png'),
(16, 'Para que no andes en taparrabos compra en Benetton y cambia tu look', '16.png'),
(17, 'Productos de ropa directo a tu hogar en Acapella Store', '17.png'),
(18, 'Compra más barato en SHEIN y recibe tu conjunto de ropa en un par de días', '18.png'),
(19, 'Studio F el hogar de la ropa con descuentos de hasta el 20%', '19.png'),
(20, 'Vendemos ropa y papitas en C&A (Te mentimos: las papitas ya no las vendemos)', '20.png'),
(21, 'Con EnviaFlores.com envía flores a todo el mundo tu mamá tus amigos tu pareja o hasta a tus abuelos.', '21.png'),
(22, 'Flores a domicilio en Guapa con Flores para que tengas muchas flores', '22.png'),
(23, 'Detalles de flores con dulces en Flores cumpleaños para combinar lo dulce con lo bello', '23.png'),
(24, 'Compra arreglos florales con nosotros. Menta Flores (las flores no huelen a menta)', '24.png'),
(25, 'Flores de México muy cerca de ti para cuando quieres comprar flores', '25.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `click`
--

CREATE TABLE `click` (
  `click_id` mediumint(9) NOT NULL,
  `consulta_id` mediumint(9) NOT NULL,
  `usuario_id` mediumint(9) NOT NULL,
  `anuncio_id` mediumint(9) NOT NULL,
  `timestamp` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `consulta_id` mediumint(9) NOT NULL,
  `usuario_id` mediumint(9) NOT NULL,
  `anuncio_id` mediumint(9) NOT NULL,
  `pagina_id` mediumint(9) NOT NULL,
  `keyword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, 'Centro Veterinario Felino. Servicio de mascotas', 'http://www.centroveterinariofelino.com.mx/'),
(4, 'CEMEGATOS - cemegatos.com.mx', 'https://cemegatos.com.mx/'),
(5, 'Hospital Veterinario de la Ciudad de México. - AGATAN CDMX', 'https://agatan.cdmx.gob.mx/agatanhv'),
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
  `timestamp` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`consulta_id`,`usuario_id`,`anuncio_id`);

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
  MODIFY `click_id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `consulta_id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `pagina_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `query`
--
ALTER TABLE `query`
  MODIFY `query_id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
