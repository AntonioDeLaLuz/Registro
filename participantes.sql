/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `participantes`;
CREATE TABLE `participantes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `evento_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_m` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_institucional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_personal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instituto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_academico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_academico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participantes_user_id_foreign` (`user_id`),
  KEY `participantes_eventos_id_foreign` (`evento_id`),
  CONSTRAINT `participantes_eventos_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `participantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `participantes` (`id`, `created_at`, `updated_at`, `name`, `lastname_p`, `lastname_m`, `email_institucional`, `email_personal`, `number`, `instituto`, `name_academico`, `grade_academico`, `area`) VALUES
(3, '2024-01-11 15:00:13', '2024-01-11 19:44:02', '', '', 'Emilio Alfonso Suárez Domínguez, Angelina Ruíz Sánchez, Pascual Linares Márquez, Ibiza Martínez Serrano, Julliana Barretto, Rodolfo Martínez Mota, Eliezer Cocoletzi Vázquez.', 'emisuarez@uv.mx', 'emisuarez@uv.mx', '2281785858', 'UV', 'UV-CA-491 Conservación de Vertebrados Silvestres y su Ambiente', 'CAEF', 'Gestión ambiental');
INSERT INTO `participantes` (`id`, `created_at`, `updated_at`, `name`, `lastname_p`, `lastname_m`, `email_institucional`, `email_personal`, `number`, `instituto`, `name_academico`, `grade_academico`, `area`) VALUES
(4, '2024-01-11 15:02:34', '2024-01-11 20:07:41', '', '', 'Gerardo Meza Flores, Luis Roberto González Grovas, Felipe Dey García, Salvador Herrera Velarde, Lina Rodríguez Ramos', 'gerardo.mf@xalapa.tecnm.mx', 'gerardo_mflores@yahoo.com.mx', '2281323912', 'ITS Xalapa', 'ITESXAL-CA-06 Sustentabilidad Industrial', 'CAEF', 'Tecnología sustentable');
INSERT INTO `participantes` (`id`, `created_at`, `updated_at`, `name`, `lastname_p`, `lastname_m`, `email_institucional`, `email_personal`, `number`, `instituto`, `name_academico`, `grade_academico`, `area`) VALUES
(5, '2024-01-11 15:05:13', '2024-01-11 20:26:33', '', '', 'Daniel Bello Parra, Alberto Ceballos, Olga Yaneth Chang Espinosa, Luis de Jesús Montero García, Félix Murrieta Domínguez', 'daniel.bello@perote.tecnm.mx', 'daniel.bello@perote.tecnm.mx', '2288358082', 'ITS Perote', 'ITESPE-CA-4 Procesos Industriales', 'CAEC', 'Sistemas de Géstión');
INSERT INTO `participantes` (`id`, `created_at`, `updated_at`, `name`, `lastname_p`, `lastname_m`, `email_institucional`, `email_personal`, `number`, `instituto`, `name_academico`, `grade_academico`, `area`) VALUES
(6, '2024-01-11 15:05:56', '2024-01-11 20:54:39', '', '', 'Lilia Ortíz Rodríguez, Omar Ríos Romero, Nora Isela Ruiz Colorado, Jorge Alberto Pineda Posadas', 'doc-035@itsperote.edu.mx', 'mc.ortizlilia@gmail.com', '2281716671', 'ITS Perote', 'ITESPE-CA-6 Biotecnología y Agroforestería Aplicada', 'CAEF', 'Salud y sustentabilidad'),
(7, '2024-01-11 15:08:26', '2024-01-11 15:08:26', '', ' ', 'Leandro Chaires Martinez, Héctor Alejandro Jiménez Ávalos, Miguel Alberto Pérez Vargas', 'leandro.cm@alamo.tecnm.mx', 'leandrochaires@yahoo.com.mx', '7831420967', 'ITS Álamo', 'ITESAT-CA-1 Biotecnología Alimentaria', 'CAEC', 'Tecnología sustentable'),
(8, '2024-01-11 15:11:23', '2024-01-11 19:13:26', '', '', 'Virginia Lagunes Barradas, Rosalía Daza Merino, Erika María Ronquillo Mandujano, Lilia Licea Hernández, María Margarita González de la Tijera, Lorena Guzmán Rodríguez, Margarita del Carmen Torres Morales', 'virginia.lb@xalapa.tecnm.mx', 'viclag@hotmail.com', '2281775378', 'ITS Xalapa', 'ITESXAL-CA-3 Sistemas Integrales para el Desarrollo de Tecnología Aplicada', 'CAEF', 'Tecnología sustentable'),
(9, '2024-01-11 15:13:59', '2024-01-11 20:12:13', '', '', 'Elizabeth Valero Pacheco, Oscar Méndez, Joaquín Jiménez Huerta, Clementina Barrera Bernal, José Ricardo Barradas Barradas, Eric Isaí Ameca y Juárez, Antonio Luna Díaz Peón, Antonio Heriberto Maruri García.', 'evalero@uv.mx', 'evalero@uv.mx', '2281225792', 'UV', 'UV-CA-19 Calidad Ambiental', 'CAC', 'Gestión ambiental'),
(11, '2024-01-11 15:18:28', '2024-01-11 20:43:31', '', '', 'Dulce María Martínez Angeles, Sagrario Alejandre Apolinar, Rodrigo González Ramírez', 'dulcemaria.ma@libres.tecnm.mx', 'dulcemaria.ma@libres.tecnm.mx', '2761161450', 'ITS Libres', 'CA-ITSLIBRES-2 Gestión de Procesos Económicos Administrativos para el Desarrollo Regional', 'CAEF', 'Sistemas de Géstión'),
(13, '2024-01-11 15:32:55', '2024-01-11 20:41:46', '', '', 'Ignacio Garay Peralta, Alfredo Díaz Criollo, Leira Carol Escudero Ramírez, Jesús Herrera Alarcón, Luis Alberto Montes Gutiérrez.', 'ignacio.gp@ugalvan.tecnm.mx', 'ignacio.gp@ugalvan.tecnm.mx', '2281364964', 'IT Úrsulo Galván', 'ITURG-CA-3 Estrategias Agropecuarias, Ambientales, Fisicoquímicas y Educativas para el Desarrollo Sustentable', 'CAEC', 'Salud y sustentabilidad'),
(14, '2024-01-11 15:32:59', '2024-01-11 15:32:59', '', '', 'Jacel Adame García, Adriana Elena Rivera Meza, Félix David Murillo Cuevas, José Antonio Fernández Viveros, Jazmín Villegas Narváez', 'jacel.ag@ugalvan.tecnm.mx', 'dra.adame.garcia@gmail.com', '2281694561', 'IT Úrsulo Galván', 'ITURG-CA-1 Biodiversidad, Biotecnología, Medio Ambiente e Innovación Tecnológica', 'CAEC', 'Tecnología sustentable'),
(15, '2024-01-11 15:35:47', '2024-01-11 20:49:50', '', '', 'Octavio Augusto García Alarcón, Maria Salome Alejandre Apolinar, Hugo Amores Perez, Irma Angelica García Gonzalez', 'octavio.garcia@itsx.edu.mx', 'octavio.garcia@itsx.edu.mx', '6642524118', 'ITS Xalapa', 'ITSXAL-CA-4 Ingeniería e Innovación Sustentable.', 'CAEF', 'Tecnología sustentable'),
(16, '2024-01-11 15:38:16', '2024-01-11 20:44:10', '', '', 'Fabiola Lango Reynoso, María del Refugio Castañeda Chávez, Isabel Araceli Amaro Espejo, Jesús Montoya Mendoza', 'jesusmontoya@bdelrio.tecnm.mx', 'jesusmontoya@bdelrio.tecnm.mx', '2293036898', 'IT de Boca del Río', 'ITBOR-CA-2 Manejo de Recursos Costeros y Ciencias Ambientales', 'CAC', 'Gestión ambiental'),
(17, '2024-01-11 15:38:29', '2024-01-11 20:44:43', '', '', 'Fabiola Sandoval Salas, Carlos Méndez Carreto, Graciela Ortega Avila', 'doc-200@itsperote.edu.mx', 'investiga.itspe@gmail.com', '22821035973', 'ITS Perote', 'ITESPE-CA-3 Procesos Agroindustriales y Bioenergía', 'CAEC', 'Tecnología sustentable'),
(18, '2024-01-11 15:44:09', '2024-01-11 19:51:32', '', '', 'Francisco Enrique Cab Jiménez, Israel Robles Hernández, Isabel Lagunes Gómez, Israel Viveros Torres, Josimar Muñoz Delgado, Francisco Torres Andrade', 'israelrh@alvarado.tecnm.mx', 'israelrobles2013@gmail.com', '2292197351', 'ITS Álvarado', 'ITESAL-CA-4 Procesos e Ingeniería y Desarrollo', 'CAEF', 'Tecnología sustentable'),
(19, '2024-01-11 16:02:42', '2024-01-11 20:45:06', '', '', 'Mariana Lobato Báez, Martha Irene Bello Ramírez, Guillermo Córdova Morales', 'martha.beram@gmail.com', 'martha.beram@gmail.com', '2221343491', 'ITS Libres', 'ITESLIBRES-CA-1 Tecnologías Emergentes en los Procesos Educativos', 'CAEF', 'Sistemas de Géstión'),
(20, '2024-01-11 16:10:41', '2024-01-11 16:10:41', '', '', 'Micloth López del Castillo Lozano, Carmen Bulbarela Sampieri, Frixia Galán Méndez, Jorge Virues Delgadillo', 'mlopezdelcastillo@uv.mx', 'micloth@gmail.com', '2281691201', 'UV', 'UV-CA-475 Ciencia, Ingeniería y Tecnología de Alimentos', 'CAEC', 'Salud y sustentabilidad'),
(21, '2024-01-11 16:20:11', '2024-01-11 20:46:06', '', '', 'Arturo Cabrera Hernández, Irma Castillo Carmona, Luis Mejía Macario, Gabriel Grosskelwing Nuñez, Joaquín Sangabriel Lomelí, Heidi Anabel Jacome Sánchez', 'arturocabrerahernandez@itsm.edu.mx', 'arturocabrerahernandez@itsm.edu.mx', '2283074040', 'ITS Misantla', 'ITESMIS-CA-8 Biotecnología Experimental', 'CAEF', 'Gestión ambiental'),
(22, '2024-01-11 16:20:37', '2024-01-11 19:07:19', '', '', 'Pablo Octavio Aguilar, Ana Paola Martínez Falcón, Arturo Sánchez González, Aurelio Ramírez Bautista, Raúl Ortiz Pulido, Dulce María Galván Hernández, Sylvia Martínez Hernández, Jessica Bravo Cadena, Christian Berriozabal Islas', 'pablo_aguilar9900@uaeh.edu.mx', 'pablo_aguilar9900@uaeh.edu.mx', '7717229375', 'UAEH', 'UAEH-CA-99 Conservación Biológica', 'CAC', 'Gestión ambiental'),
(23, '2024-01-11 16:35:09', '2024-01-11 20:51:55', '', '', 'Yadeneyro de la Cruz Elizondo, María de los Ángeles Chamorro Zárate, Héctor Venancio Narave Flores, Benito Hernández Castellanos, Oscar Carmona Hernández, Julio César Castañeda Ortega, Nancy Domínguez González, Andrea Suardíaz Solé, José Armando Lozada García, Citlali Aguilera Lira, Rodolfo Viveros Contreras', 'ydelacruz@uv.mx', 'ydelacruz@uv.mx', '2282216769', 'UV', 'UV-CA-362 Investigación y Educación para el Desarrollo Sustentable', 'CAEF', 'Gestión ambiental'),
(25, '2024-01-11 16:51:19', '2024-01-11 16:51:19', '', '', 'Vianey del Rosio Torres Pelayo, Beatriz Palmeros Sánchez, María del Carmen Ramírez Benítez', 'vitorres@uv.mx', 'vitorres@uv.mx', '2284040042', 'UV', 'UV-CA-302 Biología de la Salud', 'CAEC', 'Salud y sustentabilidad'),
(26, '2024-01-11 18:21:54', '2024-01-11 18:21:54', '', '', 'Elvira Morgado Viveros, Luis Pacheco Cobos, Celia Cecilia Acosta Hernández, Salvador Guzmán Guzmán, Elvira Morgado Viveros', 'emorgado@uv.mx', 'elmorvi@hotmail.com', '2281075092', 'UV', 'UV-CA 417 Biología y Ecología del Comportamiento', 'CAEF', 'Salud y sustentabilidad'),
(27, '2024-01-12 15:21:52', '2024-01-12 19:16:20', '', '', 'Daniel Hernández Pitalúa, Nelly Sánchez Gómez, Lizbeth Angelica Castañeda Escobar, Hugo Amilcar León Bonilla, Isai Pacheco Tejeda, Claudia Patria Fernández de Lara', 'daniel.hp@xalapa.tecnm.mx', 'dpitalua@yahoo.com', '2288370144', 'ITS Xalapa', 'ITSXAL-CA-05 Tecnología Sustentable y Desarrollo', 'CAEC', 'Tecnología sustentable'),
(28, '2024-01-12 15:58:10', '2024-01-12 18:46:10', '', '', 'David Ramírez Pérez, José Daniel Hernández Ventura, Adolfo Pelayo Moreno', 'daniel.hv@xalapa.tecnm.mx', 'david.ramirez@itsx.edu.mx', '2281302533', 'ITS Xalapa', 'ITSXAL-CA-7 Ingeniería y Tecnología Multifuncional', 'CAEF', 'Tecnología sustentable'),
(29, '2024-01-12 17:48:58', '2024-01-12 19:27:20', '', '', 'Jorge Manzo Denes, Genaro Alfonso Coria Ávila, Jaime Fisher y Salazar, Luis Isauro García Hernández, Porfirio Carrillo Castilla', 'jmanzo@uv.mx', 'jmanzo@uv.mx', '2288471062', 'UV', 'UV-CA-28 Neurociencias', 'CAC', 'Salud y sustentabilidad'),
(30, '2024-01-12 17:50:40', '2024-01-12 19:25:13', '', '', 'María Elena Hernández Aguilar, Gonzalo Emiliano Aranda Abreu, María Rebeca Toledo Cárdenas, Deissy Herrera Covarrubias, Fausto Rojas Durán, Lizbeth Donají Chi Castañeda, Jorge Manuel Suárez Medellin', 'elenahernandez@uv.mx', 'elenahernandez@uv.mx', '2288354180', 'UV', 'UV-CA-304 Neuroquímica', 'CAC', 'Salud y sustentabilidad');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;