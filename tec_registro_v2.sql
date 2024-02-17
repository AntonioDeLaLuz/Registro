CREATE DATABASE  IF NOT EXISTS `tec_registro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tec_registro`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tec_registro
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `evento_id` bigint NOT NULL,
  `comentario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validacion` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentarios_user_id_foreign` (`user_id`),
  KEY `comentarios_eventos_id_foreign` (`evento_id`),
  CONSTRAINT `comentarios_eventos_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `comentarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `urlimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eventos_name_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'WQEQWEWQE','QWEQWEQWE','QWEQWEQE','QWEQWEWQE','0000-00-00','2d15b0a8-a7a7-4261-913c-50a5234dcb6d.jpg','2023-11-20 11:29:37','2023-11-20 11:29:37',NULL);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `evento_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_user_id_foreign` (`user_id`),
  KEY `likes_eventos_id_foreign` (`evento_id`),
  CONSTRAINT `likes_eventos_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `evento_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_p` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname_m` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_institucional` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instituto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_academico` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_academico` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participantes_user_id_foreign` (`user_id`),
  KEY `participantes_eventos_id_foreign` (`evento_id`),
  CONSTRAINT `participantes_eventos_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `participantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (3,0,0,'','','Emilio Alfonso Suárez Domínguez, Angelina Ruíz Sánchez, Pascual Linares Márquez, Ibiza Martínez Serrano, Julliana Barretto, Rodolfo Martínez Mota, Eliezer Cocoletzi Vázquez.','emisuarez@uv.mx','emisuarez@uv.mx','2281785858','UV','UV-CA-491 Conservación de Vertebrados Silvestres y su Ambiente','CAEF','Gestión ambiental','2024-01-11 21:00:13','2024-01-12 01:44:02'),(4,0,0,'','','Gerardo Meza Flores, Luis Roberto González Grovas, Felipe Dey García, Salvador Herrera Velarde, Lina Rodríguez Ramos','gerardo.mf@xalapa.tecnm.mx','gerardo_mflores@yahoo.com.mx','2281323912','ITS Xalapa','ITESXAL-CA-06 Sustentabilidad Industrial','CAEF','Tecnología sustentable','2024-01-11 21:02:34','2024-01-12 02:07:41'),(5,0,0,'','','Daniel Bello Parra, Alberto Ceballos, Olga Yaneth Chang Espinosa, Luis de Jesús Montero García, Félix Murrieta Domínguez','daniel.bello@perote.tecnm.mx','daniel.bello@perote.tecnm.mx','2288358082','ITS Perote','ITESPE-CA-4 Procesos Industriales','CAEC','Sistemas de Géstión','2024-01-11 21:05:13','2024-01-12 02:26:33'),(6,0,0,'','','Lilia Ortíz Rodríguez, Omar Ríos Romero, Nora Isela Ruiz Colorado, Jorge Alberto Pineda Posadas','doc-035@itsperote.edu.mx','mc.ortizlilia@gmail.com','2281716671','ITS Perote','ITESPE-CA-6 Biotecnología y Agroforestería Aplicada','CAEF','Salud y sustentabilidad','2024-01-11 21:05:56','2024-01-12 02:54:39'),(7,0,0,'',' ','Leandro Chaires Martinez, Héctor Alejandro Jiménez Ávalos, Miguel Alberto Pérez Vargas','leandro.cm@alamo.tecnm.mx','leandrochaires@yahoo.com.mx','7831420967','ITS Álamo','ITESAT-CA-1 Biotecnología Alimentaria','CAEC','Tecnología sustentable','2024-01-11 21:08:26','2024-01-11 21:08:26'),(8,0,0,'','','Virginia Lagunes Barradas, Rosalía Daza Merino, Erika María Ronquillo Mandujano, Lilia Licea Hernández, María Margarita González de la Tijera, Lorena Guzmán Rodríguez, Margarita del Carmen Torres Morales','virginia.lb@xalapa.tecnm.mx','viclag@hotmail.com','2281775378','ITS Xalapa','ITESXAL-CA-3 Sistemas Integrales para el Desarrollo de Tecnología Aplicada','CAEF','Tecnología sustentable','2024-01-11 21:11:23','2024-01-12 01:13:26'),(9,0,0,'','','Elizabeth Valero Pacheco, Oscar Méndez, Joaquín Jiménez Huerta, Clementina Barrera Bernal, José Ricardo Barradas Barradas, Eric Isaí Ameca y Juárez, Antonio Luna Díaz Peón, Antonio Heriberto Maruri García.','evalero@uv.mx','evalero@uv.mx','2281225792','UV','UV-CA-19 Calidad Ambiental','CAC','Gestión ambiental','2024-01-11 21:13:59','2024-01-12 02:12:13'),(11,0,0,'','','Dulce María Martínez Angeles, Sagrario Alejandre Apolinar, Rodrigo González Ramírez','dulcemaria.ma@libres.tecnm.mx','dulcemaria.ma@libres.tecnm.mx','2761161450','ITS Libres','CA-ITSLIBRES-2 Gestión de Procesos Económicos Administrativos para el Desarrollo Regional','CAEF','Sistemas de Géstión','2024-01-11 21:18:28','2024-01-12 02:43:31'),(13,0,0,'','','Ignacio Garay Peralta, Alfredo Díaz Criollo, Leira Carol Escudero Ramírez, Jesús Herrera Alarcón, Luis Alberto Montes Gutiérrez.','ignacio.gp@ugalvan.tecnm.mx','ignacio.gp@ugalvan.tecnm.mx','2281364964','IT Úrsulo Galván','ITURG-CA-3 Estrategias Agropecuarias, Ambientales, Fisicoquímicas y Educativas para el Desarrollo Sustentable','CAEC','Salud y sustentabilidad','2024-01-11 21:32:55','2024-01-12 02:41:46'),(14,0,0,'','','Jacel Adame García, Adriana Elena Rivera Meza, Félix David Murillo Cuevas, José Antonio Fernández Viveros, Jazmín Villegas Narváez','jacel.ag@ugalvan.tecnm.mx','dra.adame.garcia@gmail.com','2281694561','IT Úrsulo Galván','ITURG-CA-1 Biodiversidad, Biotecnología, Medio Ambiente e Innovación Tecnológica','CAEC','Tecnología sustentable','2024-01-11 21:32:59','2024-01-11 21:32:59'),(15,0,0,'','','Octavio Augusto García Alarcón, Maria Salome Alejandre Apolinar, Hugo Amores Perez, Irma Angelica García Gonzalez','octavio.garcia@itsx.edu.mx','octavio.garcia@itsx.edu.mx','6642524118','ITS Xalapa','ITSXAL-CA-4 Ingeniería e Innovación Sustentable.','CAEF','Tecnología sustentable','2024-01-11 21:35:47','2024-01-12 02:49:50'),(16,0,0,'','','Fabiola Lango Reynoso, María del Refugio Castañeda Chávez, Isabel Araceli Amaro Espejo, Jesús Montoya Mendoza','jesusmontoya@bdelrio.tecnm.mx','jesusmontoya@bdelrio.tecnm.mx','2293036898','IT de Boca del Río','ITBOR-CA-2 Manejo de Recursos Costeros y Ciencias Ambientales','CAC','Gestión ambiental','2024-01-11 21:38:16','2024-01-12 02:44:10'),(17,0,0,'','','Fabiola Sandoval Salas, Carlos Méndez Carreto, Graciela Ortega Avila','doc-200@itsperote.edu.mx','investiga.itspe@gmail.com','22821035973','ITS Perote','ITESPE-CA-3 Procesos Agroindustriales y Bioenergía','CAEC','Tecnología sustentable','2024-01-11 21:38:29','2024-01-12 02:44:43'),(18,0,0,'','','Francisco Enrique Cab Jiménez, Israel Robles Hernández, Isabel Lagunes Gómez, Israel Viveros Torres, Josimar Muñoz Delgado, Francisco Torres Andrade','israelrh@alvarado.tecnm.mx','israelrobles2013@gmail.com','2292197351','ITS Álvarado','ITESAL-CA-4 Procesos e Ingeniería y Desarrollo','CAEF','Tecnología sustentable','2024-01-11 21:44:09','2024-01-12 01:51:32'),(19,0,0,'','','Mariana Lobato Báez, Martha Irene Bello Ramírez, Guillermo Córdova Morales','martha.beram@gmail.com','martha.beram@gmail.com','2221343491','ITS Libres','ITESLIBRES-CA-1 Tecnologías Emergentes en los Procesos Educativos','CAEF','Sistemas de Géstión','2024-01-11 22:02:42','2024-01-12 02:45:06'),(20,0,0,'','','Micloth López del Castillo Lozano, Carmen Bulbarela Sampieri, Frixia Galán Méndez, Jorge Virues Delgadillo','mlopezdelcastillo@uv.mx','micloth@gmail.com','2281691201','UV','UV-CA-475 Ciencia, Ingeniería y Tecnología de Alimentos','CAEC','Salud y sustentabilidad','2024-01-11 22:10:41','2024-01-11 22:10:41'),(21,0,0,'','','Arturo Cabrera Hernández, Irma Castillo Carmona, Luis Mejía Macario, Gabriel Grosskelwing Nuñez, Joaquín Sangabriel Lomelí, Heidi Anabel Jacome Sánchez','arturocabrerahernandez@itsm.edu.mx','arturocabrerahernandez@itsm.edu.mx','2283074040','ITS Misantla','ITESMIS-CA-8 Biotecnología Experimental','CAEF','Gestión ambiental','2024-01-11 22:20:11','2024-01-12 02:46:06'),(22,0,0,'','','Pablo Octavio Aguilar, Ana Paola Martínez Falcón, Arturo Sánchez González, Aurelio Ramírez Bautista, Raúl Ortiz Pulido, Dulce María Galván Hernández, Sylvia Martínez Hernández, Jessica Bravo Cadena, Christian Berriozabal Islas','pablo_aguilar9900@uaeh.edu.mx','pablo_aguilar9900@uaeh.edu.mx','7717229375','UAEH','UAEH-CA-99 Conservación Biológica','CAC','Gestión ambiental','2024-01-11 22:20:37','2024-01-12 01:07:19'),(23,0,0,'','','Yadeneyro de la Cruz Elizondo, María de los Ángeles Chamorro Zárate, Héctor Venancio Narave Flores, Benito Hernández Castellanos, Oscar Carmona Hernández, Julio César Castañeda Ortega, Nancy Domínguez González, Andrea Suardíaz Solé, José Armando Lozada García, Citlali Aguilera Lira, Rodolfo Viveros Contreras','ydelacruz@uv.mx','ydelacruz@uv.mx','2282216769','UV','UV-CA-362 Investigación y Educación para el Desarrollo Sustentable','CAEF','Gestión ambiental','2024-01-11 22:35:09','2024-01-12 02:51:55'),(25,0,0,'','','Vianey del Rosio Torres Pelayo, Beatriz Palmeros Sánchez, María del Carmen Ramírez Benítez','vitorres@uv.mx','vitorres@uv.mx','2284040042','UV','UV-CA-302 Biología de la Salud','CAEC','Salud y sustentabilidad','2024-01-11 22:51:19','2024-01-11 22:51:19'),(26,0,0,'','','Elvira Morgado Viveros, Luis Pacheco Cobos, Celia Cecilia Acosta Hernández, Salvador Guzmán Guzmán, Elvira Morgado Viveros','emorgado@uv.mx','elmorvi@hotmail.com','2281075092','UV','UV-CA 417 Biología y Ecología del Comportamiento','CAEF','Salud y sustentabilidad','2024-01-12 00:21:54','2024-01-12 00:21:54'),(27,0,0,'','','Daniel Hernández Pitalúa, Nelly Sánchez Gómez, Lizbeth Angelica Castañeda Escobar, Hugo Amilcar León Bonilla, Isai Pacheco Tejeda, Claudia Patria Fernández de Lara','daniel.hp@xalapa.tecnm.mx','dpitalua@yahoo.com','2288370144','ITS Xalapa','ITSXAL-CA-05 Tecnología Sustentable y Desarrollo','CAEC','Tecnología sustentable','2024-01-12 21:21:52','2024-01-13 01:16:20'),(28,0,0,'','','David Ramírez Pérez, José Daniel Hernández Ventura, Adolfo Pelayo Moreno','daniel.hv@xalapa.tecnm.mx','david.ramirez@itsx.edu.mx','2281302533','ITS Xalapa','ITSXAL-CA-7 Ingeniería y Tecnología Multifuncional','CAEF','Tecnología sustentable','2024-01-12 21:58:10','2024-01-13 00:46:10'),(29,0,0,'','','Jorge Manzo Denes, Genaro Alfonso Coria Ávila, Jaime Fisher y Salazar, Luis Isauro García Hernández, Porfirio Carrillo Castilla','jmanzo@uv.mx','jmanzo@uv.mx','2288471062','UV','UV-CA-28 Neurociencias','CAC','Salud y sustentabilidad','2024-01-12 23:48:58','2024-01-13 01:27:20'),(30,0,0,'','','María Elena Hernández Aguilar, Gonzalo Emiliano Aranda Abreu, María Rebeca Toledo Cárdenas, Deissy Herrera Covarrubias, Fausto Rojas Durán, Lizbeth Donají Chi Castañeda, Jorge Manuel Suárez Medellin','elenahernandez@uv.mx','elenahernandez@uv.mx','2288354180','UV','UV-CA-304 Neuroquímica','CAC','Salud y sustentabilidad','2024-01-12 23:50:40','2024-01-13 01:25:13');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descripcion_dos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnameP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastnameM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT '3' COMMENT '1=root, 2=administrador, 3=usuario',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','Administrador',NULL,'admin@admin.com',NULL,'$2y$10$BPPf1NOuSdsZkZtWyQoQEuGB0E4XivEcIE/YsKSEBiGUEO5iHbK1e','FEajSPHKls0eSrqFVHVkioHM07ViqfeLJfVYpdwK86C2kM6kFMzL6GRwIddt',2,'2022-11-23 08:26:55','2022-11-23 08:26:55','2022-11-23 08:26:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:53:21
