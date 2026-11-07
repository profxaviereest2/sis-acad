-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2026 a las 22:23:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_curso_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_detalle`
--

CREATE TABLE `asistencia_detalle` (
  `id_detalle` int(11) NOT NULL,
  `id_asistencia` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `id_rol_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_notas`
--

CREATE TABLE `carga_notas` (
  `id_nota` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nro_instancia` int(11) NOT NULL DEFAULT 1,
  `nota` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carga_notas`
--

INSERT INTO `carga_notas` (`id_nota`, `id_usuario`, `id_materia`, `id_tipo`, `nro_instancia`, `nota`, `activo`, `fecha`) VALUES
(1, 2, 1, 1, 1, 5, 1, '2026-11-07 19:33:45'),
(2, 3, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(3, 4, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(4, 5, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(5, 6, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(6, 7, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(7, 8, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(8, 9, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(9, 10, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(10, 11, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(11, 12, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(12, 13, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(13, 14, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(14, 15, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(15, 16, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(16, 17, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(17, 18, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(18, 19, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(19, 20, 1, 1, 1, 7, 1, '2026-11-07 18:08:16'),
(20, 2, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(21, 3, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(22, 4, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(23, 5, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(24, 6, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(25, 7, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(26, 8, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(27, 9, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(28, 10, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(29, 11, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(30, 12, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(31, 13, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(32, 14, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(33, 15, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(34, 16, 1, 1, 2, 2, 1, '2026-11-07 19:11:46'),
(35, 17, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(36, 18, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(37, 19, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(38, 20, 1, 1, 2, 8, 1, '2026-11-07 19:11:46'),
(39, 2, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(40, 3, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(41, 4, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(42, 5, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(43, 6, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(44, 7, 1, 1, 3, 9, 1, '2026-11-07 20:22:27'),
(45, 8, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(46, 9, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(47, 10, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(48, 11, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(49, 12, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(50, 13, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(51, 14, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(52, 15, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(53, 16, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(54, 17, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(55, 18, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(56, 19, 1, 1, 3, 9, 1, '2026-11-07 20:22:28'),
(57, 20, 1, 1, 3, 9, 1, '2026-11-07 20:22:28');

--
-- Disparadores `carga_notas`
--
DELIMITER $$
CREATE TRIGGER `carga_instancia_notas` BEFORE INSERT ON `carga_notas` FOR EACH ROW BEGIN

    SET NEW.nro_instancia = COALESCE(
        (SELECT MAX(c.nro_instancia) 
         FROM carga_notas c 
         WHERE c.id_usuario = NEW.id_usuario 
           AND c.id_materia = NEW.id_materia 
           AND c.id_tipo = NEW.id_tipo), 0) + 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_curricular`
--

CREATE TABLE `contenido_curricular` (
  `id_contenido` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `orden` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `division` int(11) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `id_rol_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `curso`, `division`, `turno`, `id_plan`, `anio`, `id_rol_usuario`) VALUES
(1, '7', 1, 'tarde', 1, 2026, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_horario`
--

CREATE TABLE `curso_horario` (
  `id_curso_horario` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_preceptor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `curso_horario`
--

INSERT INTO `curso_horario` (`id_curso_horario`, `id_curso`, `id_horario`, `id_materia`, `id_preceptor`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 1, 3, 3, 1),
(4, 1, 4, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_plan`
--

CREATE TABLE `detalle_plan` (
  `id_detalle` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `anio_cursada` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_plan`
--

INSERT INTO `detalle_plan` (`id_detalle`, `id_materia`, `id_plan`, `anio_cursada`) VALUES
(1, 1, 1, 7),
(2, 2, 1, 7),
(3, 3, 1, 7),
(4, 4, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_asistencia`
--

CREATE TABLE `estados_asistencia` (
  `id_estado` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

CREATE TABLE `faltas` (
  `id_faltas` int(11) NOT NULL,
  `id_horas` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_asistencia` int(11) NOT NULL,
  `faltas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `dia_semana` varchar(20) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `dia_semana`, `turno`, `hora_inicio`, `hora_fin`) VALUES
(1, 'Lunes', 'tarde', '13:30:00', '15:30:00'),
(2, 'Martes', 'tarde', '15:40:00', '17:40:00'),
(3, 'Miercoles', 'tarde', '13:30:00', '15:30:00'),
(4, 'Jueves', 'tarde', '15:40:00', '17:40:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id_horas` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `dia_semana` varchar(20) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id_horas`, `id_materia`, `id_curso`, `dia`, `hora`, `dia_semana`, `turno`, `hora_inicio`, `hora_fin`) VALUES
(1, 1, 1, 1, 1, 'Lunes', 'tarde', '13:30:00', '15:30:00'),
(2, 2, 1, 2, 1, 'Martes', 'tarde', '15:40:00', '17:40:00'),
(3, 3, 1, 3, 1, 'Miercoles', 'tarde', '13:30:00', '15:30:00'),
(4, 4, 1, 4, 1, 'Jueves', 'tarde', '15:40:00', '17:40:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_horas` int(11) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `anio_materia` int(11) DEFAULT NULL,
  `carga_horaria_semanal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `id_horas`, `especialidad`, `id_plan`, `anio_materia`, `carga_horaria_semanal`) VALUES
(1, 'Programacion Web', 1, 'informatica', 1, 7, 4),
(2, 'Bases de Datos', 2, 'informatica', 1, 7, 4),
(3, 'Sistemas Operativos', 3, 'informatica', 1, 7, 4),
(4, 'Redes y Comunicaciones', 4, 'informatica', 1, 7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_modificadas`
--

CREATE TABLE `notas_modificadas` (
  `id_registro` int(11) NOT NULL,
  `id_nota` int(11) NOT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nota_vieja` int(11) NOT NULL,
  `nota_nueva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas_modificadas`
--

INSERT INTO `notas_modificadas` (`id_registro`, `id_nota`, `fecha_modificacion`, `nota_vieja`, `nota_nueva`) VALUES
(1, 1, '2026-11-07 18:53:31', 7, 9),
(2, 1, '2026-11-07 19:33:45', 9, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientacion`
--

CREATE TABLE `orientacion` (
  `id_orientacion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `orientacion`
--

INSERT INTO `orientacion` (`id_orientacion`, `nombre`) VALUES
(1, 'Informática'),
(2, 'Construcciones'),
(3, 'Electrónica'),
(4, 'Administración'),
(5, 'Agronomía'),
(6, 'Química'),
(7, 'Informática'),
(8, 'Construcciones'),
(9, 'Electrónica'),
(10, 'Administración'),
(11, 'Agronomía'),
(12, 'Química'),
(13, 'Informática'),
(14, 'Construcciones'),
(15, 'Electrónica'),
(16, 'Administración'),
(17, 'Agronomía'),
(18, 'Química'),
(19, 'Informática'),
(20, 'Construcciones'),
(21, 'Electrónica'),
(22, 'Administración'),
(23, 'Agronomía'),
(24, 'Química'),
(25, 'Informática'),
(26, 'Construcciones'),
(27, 'Electrónica'),
(28, 'Administración'),
(29, 'Agronomía'),
(30, 'Química'),
(31, 'Informática'),
(32, 'Construcciones'),
(33, 'Electrónica'),
(34, 'Administración'),
(35, 'Agronomía'),
(36, 'Química'),
(37, 'Informática'),
(38, 'Construcciones'),
(39, 'Electrónica'),
(40, 'Administración'),
(41, 'Agronomía'),
(42, 'Química');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estudio`
--

CREATE TABLE `plan_estudio` (
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_orientacion` int(11) DEFAULT NULL,
  `id_regimen` int(11) NOT NULL,
  `codigo_resolucion` varchar(50) DEFAULT NULL,
  `anio_validez` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plan_estudio`
--

INSERT INTO `plan_estudio` (`id_plan`, `nombre`, `id_orientacion`, `id_regimen`, `codigo_resolucion`, `anio_validez`) VALUES
(1, 'Plan 2026', 1, 1, 'Res-2026-001', 2026);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `previa`
--

CREATE TABLE `previa` (
  `id_previa` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_evaluacion`
--

CREATE TABLE `regimen_evaluacion` (
  `id_regimen` int(11) NOT NULL,
  `tipo_calificacion` enum('text','int') NOT NULL,
  `nota_minima` int(11) NOT NULL,
  `escala_numerica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regimen_evaluacion`
--

INSERT INTO `regimen_evaluacion` (`id_regimen`, `tipo_calificacion`, `nota_minima`, `escala_numerica`) VALUES
(1, 'int', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_rol_usuario` int(11) NOT NULL,
  `p_carga_alum` tinyint(1) DEFAULT 0,
  `p_mod_notas` tinyint(1) DEFAULT 0,
  `p_asistencias` tinyint(1) DEFAULT 0,
  `p_asig_mate` tinyint(1) DEFAULT 0,
  `p_alta_alum` tinyint(1) DEFAULT 0,
  `p_baja_alum` tinyint(1) DEFAULT 0,
  `p_alta_baja_prof` tinyint(1) DEFAULT 0,
  `p_aprobar_exam` tinyint(1) DEFAULT 0,
  `p_asignar_rol_permiso` tinyint(1) DEFAULT 0,
  `p_carga_notas` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `id_rol_usuario`, `p_carga_alum`, `p_mod_notas`, `p_asistencias`, `p_asig_mate`, `p_alta_alum`, `p_baja_alum`, `p_alta_baja_prof`, `p_aprobar_exam`, `p_asignar_rol_permiso`, `p_carga_notas`) VALUES
(1, 'root', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Profesor', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(3, 'Preceptor', 2, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0),
(4, 'Alumno', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Invitado', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `aprobado` tinyint(1) DEFAULT 0,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `tipo`, `id_usuario`, `id_alumno`, `aprobado`, `fecha`, `id_nota`) VALUES
(1, 'modificar_nota', 1, 2, 0, '2026-11-07 18:52:47', 1),
(2, 'carga_nota', 1, 1001001, 2, '2026-11-07 20:18:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nota`
--

CREATE TABLE `tipo_nota` (
  `id_tipo` int(11) NOT NULL,
  `tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_nota`
--

INSERT INTO `tipo_nota` (`id_tipo`, `tipo`) VALUES
(1, 'examen'),
(2, 'integrador'),
(3, 'exposicion'),
(4, 'practica'),
(5, 'oral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` text NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion_actividad` text NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `dni`, `email`, `pass`, `activo`, `descripcion_actividad`, `id_rol`, `id_curso`) VALUES
(1, 'Administrador', 'Root', 12345678, 'root@escuela.com', 'root123', 1, 'Usuario root con acceso total', 1, NULL),
(2, 'Nombre2', 'Apellido2', 10000002, 'alumno2@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(3, 'Nombre3', 'Apellido3', 10000003, 'alumno3@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(4, 'Nombre4', 'Apellido4', 10000004, 'alumno4@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(5, 'Nombre5', 'Apellido5', 10000005, 'alumno5@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(6, 'Nombre6', 'Apellido6', 10000006, 'alumno6@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(7, 'Nombre7', 'Apellido7', 10000007, 'alumno7@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(8, 'Nombre8', 'Apellido8', 10000008, 'alumno8@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(9, 'Nombre9', 'Apellido9', 10000009, 'alumno9@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(10, 'Nombre10', 'Apellido10', 10000010, 'alumno10@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(11, 'Nombre11', 'Apellido11', 10000011, 'alumno11@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(12, 'Nombre12', 'Apellido12', 10000012, 'alumno12@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(13, 'Nombre13', 'Apellido13', 10000013, 'alumno13@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(14, 'Nombre14', 'Apellido14', 10000014, 'alumno14@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(15, 'Nombre15', 'Apellido15', 10000015, 'alumno15@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(16, 'Nombre16', 'Apellido16', 10000016, 'alumno16@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(17, 'Nombre17', 'Apellido17', 10000017, 'alumno17@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(18, 'Nombre18', 'Apellido18', 10000018, 'alumno18@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(19, 'Nombre19', 'Apellido19', 10000019, 'alumno19@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1),
(20, 'Nombre20', 'Apellido20', 10000020, 'alumno20@escuela.com', 'pass123', 1, 'Alumno 7° año informática', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_usuario_rol`, `id_usuario`, `id_rol`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `version_plan`
--

CREATE TABLE `version_plan` (
  `id_version` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `nro_version` int(11) NOT NULL,
  `estado` enum('borrador','vigente','obsoleto') NOT NULL,
  `vigente_desde` date DEFAULT NULL,
  `vigente_hasta` date DEFAULT NULL,
  `id_usuario_creador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `version_plan`
--

INSERT INTO `version_plan` (`id_version`, `id_plan`, `nro_version`, `estado`, `vigente_desde`, `vigente_hasta`, `id_usuario_creador`) VALUES
(1, 1, 1, 'vigente', '2026-01-01', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD UNIQUE KEY `id_asistencia` (`id_asistencia`),
  ADD KEY `id_asistencia_2` (`id_asistencia`),
  ADD KEY `id_asistencia_3` (`id_asistencia`),
  ADD KEY `id_curso_horario` (`id_curso_horario`);

--
-- Indices de la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_asistencia` (`id_asistencia`),
  ADD KEY `id_rol_usuario` (`id_rol_usuario`);

--
-- Indices de la tabla `carga_notas`
--
ALTER TABLE `carga_notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_usuario` (`id_usuario`,`id_materia`,`id_tipo`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `contenido_curricular`
--
ALTER TABLE `contenido_curricular`
  ADD PRIMARY KEY (`id_contenido`),
  ADD KEY `fk_contenido_detalle` (`id_detalle`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_rol_usuario` (`id_rol_usuario`);

--
-- Indices de la tabla `curso_horario`
--
ALTER TABLE `curso_horario`
  ADD PRIMARY KEY (`id_curso_horario`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `detalle_plan`
--
ALTER TABLE `detalle_plan`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Indices de la tabla `estados_asistencia`
--
ALTER TABLE `estados_asistencia`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id_faltas`),
  ADD KEY `id_horas` (`id_horas`,`id_usuario`,`id_asistencia`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_asistencia` (`id_asistencia`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id_horas`),
  ADD KEY `id_materia` (`id_materia`,`id_curso`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_horas` (`id_horas`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Indices de la tabla `notas_modificadas`
--
ALTER TABLE `notas_modificadas`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_nota` (`id_nota`);

--
-- Indices de la tabla `orientacion`
--
ALTER TABLE `orientacion`
  ADD PRIMARY KEY (`id_orientacion`);

--
-- Indices de la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_regimen` (`id_regimen`),
  ADD KEY `fk_plan_orientacion` (`id_orientacion`);

--
-- Indices de la tabla `previa`
--
ALTER TABLE `previa`
  ADD PRIMARY KEY (`id_previa`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `regimen_evaluacion`
--
ALTER TABLE `regimen_evaluacion`
  ADD PRIMARY KEY (`id_regimen`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_nota` (`id_nota`),
  ADD KEY `id_nota_2` (`id_nota`);

--
-- Indices de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_usuario_rol`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `version_plan`
--
ALTER TABLE `version_plan`
  ADD PRIMARY KEY (`id_version`),
  ADD KEY `fk_version_plan` (`id_plan`),
  ADD KEY `fk_version_usuario` (`id_usuario_creador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido_curricular`
--
ALTER TABLE `contenido_curricular`
  MODIFY `id_contenido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso_horario`
--
ALTER TABLE `curso_horario`
  MODIFY `id_curso_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_plan`
--
ALTER TABLE `detalle_plan`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados_asistencia`
--
ALTER TABLE `estados_asistencia`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orientacion`
--
ALTER TABLE `orientacion`
  MODIFY `id_orientacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `version_plan`
--
ALTER TABLE `version_plan`
  MODIFY `id_version` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_curso_horario`) REFERENCES `curso_horario` (`id_curso_horario`);

--
-- Filtros para la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  ADD CONSTRAINT `asistencia_detalle_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados_asistencia` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asistencia_detalle_ibfk_2` FOREIGN KEY (`id_asistencia`) REFERENCES `asistencia` (`id_asistencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carga_notas`
--
ALTER TABLE `carga_notas`
  ADD CONSTRAINT `carga_notas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `carga_notas_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `carga_notas_ibfk_3` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_nota` (`id_tipo`);

--
-- Filtros para la tabla `contenido_curricular`
--
ALTER TABLE `contenido_curricular`
  ADD CONSTRAINT `fk_contenido_detalle` FOREIGN KEY (`id_detalle`) REFERENCES `detalle_plan` (`id_detalle`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`);

--
-- Filtros para la tabla `curso_horario`
--
ALTER TABLE `curso_horario`
  ADD CONSTRAINT `curso_horario_ibfk_1` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horario`),
  ADD CONSTRAINT `curso_horario_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `curso_horario_ibfk_3` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `detalle_plan`
--
ALTER TABLE `detalle_plan`
  ADD CONSTRAINT `detalle_plan_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `detalle_plan_ibfk_2` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`);

--
-- Filtros para la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id_horas`),
  ADD CONSTRAINT `faltas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `faltas_ibfk_3` FOREIGN KEY (`id_asistencia`) REFERENCES `asistencia` (`id_asistencia`);

--
-- Filtros para la tabla `horas`
--
ALTER TABLE `horas`
  ADD CONSTRAINT `horas_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `horas_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id_horas`),
  ADD CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`);

--
-- Filtros para la tabla `notas_modificadas`
--
ALTER TABLE `notas_modificadas`
  ADD CONSTRAINT `notas_modificadas_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `carga_notas` (`id_nota`);

--
-- Filtros para la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  ADD CONSTRAINT `fk_plan_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientacion` (`id_orientacion`),
  ADD CONSTRAINT `plan_estudio_ibfk_1` FOREIGN KEY (`id_regimen`) REFERENCES `regimen_evaluacion` (`id_regimen`);

--
-- Filtros para la tabla `previa`
--
ALTER TABLE `previa`
  ADD CONSTRAINT `previa_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `solicitud_ibfk_3` FOREIGN KEY (`id_nota`) REFERENCES `carga_notas` (`id_nota`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

