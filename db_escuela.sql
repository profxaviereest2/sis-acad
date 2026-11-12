-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2026 a las 19:50:55
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
-- Base de datos: `bd_escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_actuacion`
--

CREATE TABLE `alumno_actuacion` (
  `id_actuacion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo` enum('OBSERVACION','SUSPENSION','EXPULSION','OTRA') NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fundamento` text NOT NULL,
  `resolucion` varchar(120) DEFAULT NULL,
  `estado` enum('ABIERTA','RESUELTA','ANULADA') NOT NULL DEFAULT 'ABIERTA',
  `registrado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_egreso`
--

CREATE TABLE `alumno_egreso` (
  `id_egreso` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_plan` int(11) DEFAULT NULL,
  `fecha_egreso` date NOT NULL,
  `tipo_titulo` varchar(160) DEFAULT NULL,
  `numero_acta` varchar(80) DEFAULT NULL,
  `validacion_academica` tinyint(1) NOT NULL DEFAULT 0,
  `validado_por` int(11) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `registrado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_inscripcion`
--

CREATE TABLE `alumno_inscripcion` (
  `id_inscripcion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `anio_lectivo` smallint(6) NOT NULL,
  `estado` enum('INSCRIPTO','REGULAR','CONDICIONAL','LIBRE','EN_PASE','FINALIZADA') NOT NULL DEFAULT 'INSCRIPTO',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `registrado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_inscripcion`
--

INSERT INTO `alumno_inscripcion` (`id_inscripcion`, `id_usuario`, `id_curso`, `anio_lectivo`, `estado`, `fecha_inicio`, `fecha_fin`, `observacion`, `registrado_por`, `creado_en`) VALUES
(1, 2, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(2, 3, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(3, 4, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(4, 5, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(5, 6, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(6, 7, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(7, 8, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(8, 9, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(9, 10, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(10, 11, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(11, 12, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(12, 13, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(13, 14, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(14, 15, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(15, 16, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(16, 17, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(17, 18, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(18, 19, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(19, 20, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(20, 48244151, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02'),
(21, 48302810, 1, 2026, 'INSCRIPTO', NULL, NULL, 'Migración inicial desde usuario.id_curso; revisar el historial previo.', NULL, '2026-11-12 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_trayectoria`
--

CREATE TABLE `alumno_trayectoria` (
  `id_movimiento` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `estado_anterior` varchar(60) DEFAULT NULL,
  `estado_nuevo` varchar(60) NOT NULL,
  `fecha_efectiva` date NOT NULL,
  `motivo` varchar(180) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `id_curso_origen` int(11) DEFAULT NULL,
  `id_curso_destino` int(11) DEFAULT NULL,
  `registrado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_trayectoria`
--

INSERT INTO `alumno_trayectoria` (`id_movimiento`, `id_usuario`, `tipo`, `estado_anterior`, `estado_nuevo`, `fecha_efectiva`, `motivo`, `observacion`, `id_curso_origen`, `id_curso_destino`, `registrado_por`, `creado_en`) VALUES
(1, 2, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(2, 3, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(3, 4, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(4, 5, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(5, 6, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(6, 7, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(7, 8, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(8, 9, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(9, 10, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(10, 11, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(11, 12, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(12, 13, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(13, 14, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(14, 15, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(15, 16, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(16, 17, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(17, 18, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(18, 19, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(19, 20, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(20, 48244151, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02'),
(21, 48302810, 'MIGRACION', NULL, 'INSCRIPTO', '2026-11-12', 'Migración inicial', 'Situación inicial pendiente de verificación; no se infiere del estado de la cuenta de acceso.', NULL, NULL, NULL, '2026-11-12 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_tutor`
--

CREATE TABLE `alumno_tutor` (
  `id_alumno_tutor` bigint(20) UNSIGNED NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_tutor` int(11) NOT NULL,
  `parentesco` varchar(50) NOT NULL DEFAULT 'Tutor responsable',
  `observacion` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id_rol_usuario` int(11) NOT NULL,
  `id_usuario_responsable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_permiso`
--

CREATE TABLE `auditoria_permiso` (
  `id_auditoria` bigint(20) UNSIGNED NOT NULL,
  `id_usuario_afectado` int(11) DEFAULT NULL,
  `id_permiso` int(10) UNSIGNED DEFAULT NULL,
  `accion` varchar(40) NOT NULL,
  `efecto` varchar(12) DEFAULT NULL,
  `id_actor` int(11) DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  `referencia_tipo` varchar(40) DEFAULT NULL,
  `referencia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula_login_attempts`
--

CREATE TABLE `aula_login_attempts` (
  `ip_hash` char(64) NOT NULL,
  `dni` int(11) NOT NULL,
  `attempts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `window_started` datetime NOT NULL,
  `blocked_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aula_login_attempts`
--

INSERT INTO `aula_login_attempts` (`ip_hash`, `dni`, `attempts`, `window_started`, `blocked_until`) VALUES
('eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 0, 1, '2026-11-10 21:17:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula_sequences`
--

CREATE TABLE `aula_sequences` (
  `entity` varchar(40) NOT NULL,
  `next_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aula_sequences`
--

INSERT INTO `aula_sequences` (`entity`, `next_id`) VALUES
('curso', 2),
('usuario', 48302811);

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
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
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
(14, 15, 1, 1, 1, 8, 1, '2026-11-10 16:07:53'),
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
(52, 15, 1, 1, 3, 8, 1, '2026-11-10 16:07:53'),
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
-- Estructura de tabla para la tabla `configuracion_sistema`
--

CREATE TABLE `configuracion_sistema` (
  `clave` varchar(80) NOT NULL,
  `valor` text NOT NULL,
  `actualizado_por` int(11) DEFAULT NULL,
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion_sistema`
--

INSERT INTO `configuracion_sistema` (`clave`, `valor`, `actualizado_por`, `actualizado_en`) VALUES
('ciclo_lectivo', '2026', 1, '2026-11-10 23:01:35'),
('direccion_institucional', '', 1, '2026-11-10 23:01:35'),
('email_institucional', '', 1, '2026-11-10 23:01:35'),
('logo_institucion', 'img/logo_institucion_1794351695.png', 1, '2026-11-10 23:01:35'),
('mensaje_bienvenida', 'Ingresá con tu DNI y contraseña para acceder al sistema.', 1, '2026-11-10 23:01:35'),
('nombre_institucion', '', 1, '2026-11-10 23:01:35'),
('telefono_institucional', '', 1, '2026-11-10 23:01:35');

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
-- Estructura de tabla para la tabla `docente_curso_materia`
--

CREATE TABLE `docente_curso_materia` (
  `id_asignacion` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `anio_lectivo` smallint(4) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docente_curso_materia`
--

INSERT INTO `docente_curso_materia` (`id_asignacion`, `id_docente`, `id_curso`, `id_materia`, `anio_lectivo`, `activo`, `creado_en`) VALUES
(1, 3, 1, 2, 2026, 0, '2026-11-11 00:32:00'),
(5, 48302809, 1, 2, 2026, 1, '2026-11-11 00:33:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_asistencia`
--

CREATE TABLE `estados_asistencia` (
  `id_estado` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estados_asistencia`
--

INSERT INTO `estados_asistencia` (`id_estado`, `codigo`, `descripcion`) VALUES
(1, 'P', 'Presente'),
(2, 'A', 'Ausente'),
(3, 'T', 'Llegada tarde'),
(4, 'J', 'Ausencia justificada');

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
-- Estructura de tabla para la tabla `gestion_auditoria`
--

CREATE TABLE `gestion_auditoria` (
  `id_evento` bigint(20) UNSIGNED NOT NULL,
  `dominio` enum('PERSONAL','ALUMNO') NOT NULL,
  `entidad` varchar(80) NOT NULL,
  `entidad_id` bigint(20) UNSIGNED NOT NULL,
  `accion` varchar(80) NOT NULL,
  `detalle` text DEFAULT NULL,
  `id_actor` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_notificacion`
--

CREATE TABLE `gestion_notificacion` (
  `id_notificacion` bigint(20) UNSIGNED NOT NULL,
  `id_usuario_destino` int(11) NOT NULL,
  `tipo` varchar(80) NOT NULL,
  `titulo` varchar(180) NOT NULL,
  `mensaje` text NOT NULL,
  `referencia_tipo` varchar(80) DEFAULT NULL,
  `referencia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leida_en` datetime DEFAULT NULL,
  `creada_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `carga_horaria_semanal` int(11) DEFAULT NULL,
  `Contenidos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `id_horas`, `especialidad`, `id_plan`, `anio_materia`, `carga_horaria_semanal`, `Contenidos`) VALUES
(1, 'Programacion Web', 1, 'informatica', 1, 7, 4, NULL),
(2, 'Bases de Datos', 2, 'informatica', 1, 7, 4, NULL),
(3, 'Sistemas Operativos', 3, 'informatica', 1, 7, 4, NULL),
(4, 'Redes y Comunicaciones', 4, 'informatica', 1, 7, 4, NULL);

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
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nombre` varchar(140) NOT NULL,
  `modulo` varchar(60) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `sensible` tinyint(1) NOT NULL DEFAULT 0,
  `solicitable` tinyint(1) NOT NULL DEFAULT 1,
  `implementado` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `codigo`, `nombre`, `modulo`, `descripcion`, `sensible`, `solicitable`, `implementado`, `activo`, `creado_en`) VALUES
(1, 'examen.ver', 'Consultar exámenes', 'examenes', 'Consultar exámenes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(2, 'examen.crear', 'Crear exámenes', 'examenes', 'Crear exámenes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(3, 'examen.editar', 'Editar exámenes', 'examenes', 'Editar exámenes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(4, 'examen.asignar', 'Asignar exámenes', 'examenes', 'Asignar exámenes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(5, 'examen.registrar_resultado', 'Registrar resultados', 'examenes', 'Registrar resultados', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(6, 'examen.cerrar', 'Cerrar exámenes', 'examenes', 'Cerrar exámenes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(7, 'nota.ver', 'Consultar calificaciones', 'notas', 'Consultar calificaciones', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(8, 'nota.solicitar_carga', 'Solicitar autorización de carga', 'notas', 'Solicitar autorización de carga', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(9, 'nota.cargar', 'Cargar calificaciones autorizadas', 'notas', 'Cargar calificaciones autorizadas', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(10, 'nota.editar_borrador', 'Editar calificaciones no aprobadas', 'notas', 'Editar calificaciones no aprobadas', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(11, 'nota.solicitar_modificacion', 'Solicitar modificación de nota aprobada', 'notas', 'Solicitar modificación de nota aprobada', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(12, 'nota.aprobar_carga', 'Aprobar cargas de calificaciones', 'notas', 'Aprobar cargas de calificaciones', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(13, 'nota.rechazar_carga', 'Rechazar cargas de calificaciones', 'notas', 'Rechazar cargas de calificaciones', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(14, 'nota.aprobar_modificacion', 'Aprobar modificaciones de notas', 'notas', 'Aprobar modificaciones de notas', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(15, 'nota.rechazar_modificacion', 'Rechazar modificaciones de notas', 'notas', 'Rechazar modificaciones de notas', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(16, 'nota.publicar', 'Publicar calificaciones', 'notas', 'Publicar calificaciones', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(17, 'nota.anular', 'Anular calificaciones', 'notas', 'Anular calificaciones', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(18, 'asistencia.ver', 'Consultar asistencias', 'asistencias', 'Consultar asistencias', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(19, 'asistencia.tomar', 'Registrar asistencia', 'asistencias', 'Registrar asistencia', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(20, 'asistencia.modificar_propia', 'Modificar registros propios', 'asistencias', 'Modificar registros propios', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(21, 'asistencia.modificar_ajena', 'Modificar registros de otros usuarios', 'asistencias', 'Modificar registros de otros usuarios', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(22, 'asistencia.justificar', 'Registrar justificaciones', 'asistencias', 'Registrar justificaciones', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(23, 'asistencia.aprobar_justificacion', 'Aprobar justificaciones', 'asistencias', 'Aprobar justificaciones', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(24, 'asistencia.anular', 'Anular registros de asistencia', 'asistencias', 'Anular registros de asistencia', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(25, 'asistencia.cerrar_periodo', 'Cerrar período de asistencia', 'asistencias', 'Cerrar período de asistencia', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(26, 'asistencia.reabrir_periodo', 'Reabrir período de asistencia', 'asistencias', 'Reabrir período de asistencia', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(27, 'asistencia.exportar', 'Exportar asistencias', 'asistencias', 'Exportar asistencias', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(28, 'alumno.ver', 'Consultar legajos', 'alumnos', 'Consultar legajos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(29, 'alumno.ver_datos_sensibles', 'Consultar datos sensibles', 'alumnos', 'Consultar datos sensibles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(30, 'alumno.crear', 'Crear legajos', 'alumnos', 'Crear legajos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(31, 'alumno.editar_datos', 'Editar datos personales', 'alumnos', 'Editar datos personales', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(32, 'alumno.editar_academico', 'Editar datos académicos', 'alumnos', 'Editar datos académicos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(33, 'alumno.dar_baja', 'Dar de baja alumnos', 'alumnos', 'Dar de baja alumnos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(34, 'alumno.reactivar', 'Reactivar alumnos', 'alumnos', 'Reactivar alumnos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(35, 'alumno.cambiar_curso', 'Cambiar alumnos de curso', 'alumnos', 'Cambiar alumnos de curso', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(36, 'alumno.inscribir', 'Inscribir alumnos', 'alumnos', 'Inscribir alumnos', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(37, 'alumno.exportar', 'Exportar legajos', 'alumnos', 'Exportar legajos', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(38, 'personal.ver', 'Consultar personal', 'personal', 'Consultar personal', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(39, 'personal.crear', 'Crear personal', 'personal', 'Crear personal', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(40, 'personal.editar', 'Editar personal', 'personal', 'Editar personal', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(41, 'personal.activar', 'Activar usuarios', 'personal', 'Activar usuarios', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(42, 'personal.desactivar', 'Desactivar usuarios', 'personal', 'Desactivar usuarios', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(43, 'personal.asignar_rol', 'Asignar roles', 'personal', 'Asignar roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(44, 'personal.cambiar_rol', 'Cambiar roles', 'personal', 'Cambiar roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(45, 'personal.resetear_credenciales', 'Restablecer credenciales', 'personal', 'Restablecer credenciales', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(46, 'personal.ver_asignaciones', 'Consultar asignaciones docentes', 'personal', 'Consultar asignaciones docentes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(47, 'asignacion.ver', 'Consultar asignaciones', 'asignaciones', 'Consultar asignaciones', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(48, 'asignacion.crear', 'Asignar docentes a cursos y materias', 'asignaciones', 'Asignar docentes a cursos y materias', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(49, 'asignacion.desactivar', 'Desactivar asignaciones docentes', 'asignaciones', 'Desactivar asignaciones docentes', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(50, 'curso.ver', 'Consultar cursos', 'estructura', 'Consultar cursos', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(51, 'curso.crear', 'Crear cursos', 'estructura', 'Crear cursos', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(52, 'curso.editar', 'Editar cursos', 'estructura', 'Editar cursos', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(53, 'curso.cerrar', 'Cerrar cursos', 'estructura', 'Cerrar cursos', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(54, 'materia.ver', 'Consultar materias', 'estructura', 'Consultar materias', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(55, 'materia.crear', 'Crear materias', 'estructura', 'Crear materias', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(56, 'materia.editar', 'Editar materias', 'estructura', 'Editar materias', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(57, 'plan.ver', 'Consultar planes de estudio', 'planes', 'Consultar planes de estudio', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(58, 'plan.crear', 'Crear planes de estudio', 'planes', 'Crear planes de estudio', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(59, 'plan.editar', 'Editar planes de estudio', 'planes', 'Editar planes de estudio', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(60, 'plan.aprobar', 'Aprobar planes de estudio', 'planes', 'Aprobar planes de estudio', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(61, 'plan.archivar', 'Archivar planes de estudio', 'planes', 'Archivar planes de estudio', 0, 1, 1, 1, '2026-11-12 03:03:24'),
(62, 'horario.ver', 'Consultar horarios', 'horarios', 'Consultar horarios', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(63, 'horario.editar', 'Editar horarios', 'horarios', 'Editar horarios', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(64, 'solicitud.ver_propia', 'Consultar solicitudes propias', 'solicitudes', 'Consultar solicitudes propias', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(65, 'solicitud.ver_todas', 'Consultar solicitudes institucionales', 'solicitudes', 'Consultar solicitudes institucionales', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(66, 'solicitud.crear', 'Crear solicitudes', 'solicitudes', 'Crear solicitudes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(67, 'solicitud.aprobar', 'Aprobar solicitudes', 'solicitudes', 'Aprobar solicitudes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(68, 'solicitud.rechazar', 'Rechazar solicitudes', 'solicitudes', 'Rechazar solicitudes', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(69, 'solicitud.cancelar_propia', 'Cancelar solicitudes propias', 'solicitudes', 'Cancelar solicitudes propias', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(70, 'solicitud.revocar_autorizacion', 'Revocar autorizaciones', 'solicitudes', 'Revocar autorizaciones', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(71, 'rol.ver', 'Consultar roles', 'seguridad', 'Consultar roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(72, 'rol.crear', 'Crear roles', 'seguridad', 'Crear roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(73, 'rol.editar', 'Editar roles', 'seguridad', 'Editar roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(74, 'rol.desactivar', 'Desactivar roles', 'seguridad', 'Desactivar roles', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(75, 'permiso.ver_catalogo', 'Consultar catálogo de permisos', 'seguridad', 'Consultar catálogo de permisos', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(76, 'permiso.editar_base', 'Administrar permisos base de roles', 'seguridad', 'Administrar permisos base de roles', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(77, 'permiso.solicitar', 'Solicitar permisos individuales', 'seguridad', 'Solicitar permisos individuales', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(78, 'permiso.aprobar', 'Aprobar permisos individuales', 'seguridad', 'Aprobar permisos individuales', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(79, 'permiso.revocar', 'Revocar permisos individuales', 'seguridad', 'Revocar permisos individuales', 1, 0, 1, 1, '2026-11-12 03:03:24'),
(80, 'auditoria.ver', 'Consultar auditoría', 'seguridad', 'Consultar auditoría', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(81, 'auditoria.exportar', 'Exportar auditoría', 'seguridad', 'Exportar auditoría', 1, 0, 0, 1, '2026-11-12 03:03:24'),
(82, 'configuracion.ver', 'Consultar configuración', 'configuracion', 'Consultar configuración', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(83, 'configuracion.editar', 'Modificar configuración', 'configuracion', 'Modificar configuración', 0, 1, 0, 1, '2026-11-12 03:03:24'),
(84, 'personal.vinculo.ver', 'Consultar vínculos laborales', 'Personal', 'Consultar vínculos institucionales del personal.', 0, 1, 1, 1, '2026-11-12 04:23:02'),
(85, 'personal.vinculo.crear', 'Crear vínculos laborales', 'Personal', 'Registrar vínculos institucionales del personal.', 0, 1, 1, 1, '2026-11-12 04:23:02'),
(86, 'personal.vinculo.finalizar', 'Finalizar vínculos laborales', 'Personal', 'Finalizar vínculos sin eliminar el historial.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(87, 'personal.designacion.gestionar', 'Gestionar designaciones', 'Personal', 'Crear y finalizar cargos y funciones.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(88, 'personal.situacion.gestionar', 'Gestionar situaciones laborales', 'Personal', 'Registrar licencias, actividad y otras situaciones.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(89, 'personal.cobertura.gestionar', 'Gestionar coberturas', 'Personal', 'Registrar suplencias y reemplazos vinculados a designaciones.', 1, 0, 0, 1, '2026-11-12 04:23:02'),
(90, 'alumno.trayectoria.ver', 'Consultar trayectoria estudiantil', 'Alumnos', 'Consultar movimientos e historial académico-administrativo.', 0, 1, 1, 1, '2026-11-12 04:23:02'),
(91, 'alumno.trayectoria.gestionar', 'Gestionar trayectoria estudiantil', 'Alumnos', 'Registrar movimientos y cambios de situación.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(92, 'alumno.egreso.registrar', 'Registrar egresos', 'Alumnos', 'Registrar un egreso con validación académica institucional.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(93, 'alumno.disciplinario.gestionar', 'Gestionar actuaciones disciplinarias', 'Alumnos', 'Registrar actuaciones y resoluciones disciplinarias.', 1, 0, 1, 1, '2026-11-12 04:23:02'),
(94, 'familia.ver', 'Consultar portal familiar', 'Familia', 'Consultar únicamente los alumnos vinculados al usuario tutor.', 0, 0, 1, 1, '2026-11-12 18:50:29'),
(95, 'familia.vinculos.gestionar', 'Gestionar vínculos familiares', 'Familia', 'Crear, desactivar y consultar relaciones verificadas entre tutores y alumnos.', 1, 0, 1, 1, '2026-11-12 18:50:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_cargo`
--

CREATE TABLE `personal_cargo` (
  `id_cargo` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(60) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `categoria` enum('DOCENTE','NO_DOCENTE','DIRECTIVO','OTRO') NOT NULL DEFAULT 'OTRO',
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_cargo`
--

INSERT INTO `personal_cargo` (`id_cargo`, `codigo`, `nombre`, `categoria`, `activo`) VALUES
(1, 'PROFESOR', 'Profesor', 'DOCENTE', 1),
(2, 'PRECEPTOR', 'Preceptor', 'NO_DOCENTE', 1),
(3, 'DIRECTIVO', 'Directivo', 'DIRECTIVO', 1),
(4, 'SECRETARIO', 'Secretario', 'NO_DOCENTE', 1),
(5, 'ADMINISTRATIVO', 'Administrativo', 'NO_DOCENTE', 1),
(6, 'JEFE_DEPARTAMENTO', 'Jefe de departamento', 'DOCENTE', 1),
(7, 'AUXILIAR', 'Auxiliar', 'NO_DOCENTE', 1),
(8, 'OTRO', 'Otro cargo', 'OTRO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_cobertura`
--

CREATE TABLE `personal_cobertura` (
  `id_cobertura` bigint(20) UNSIGNED NOT NULL,
  `id_designacion_origen` bigint(20) UNSIGNED NOT NULL,
  `id_designacion_cobertura` bigint(20) UNSIGNED NOT NULL,
  `id_asignacion_docente` int(11) DEFAULT NULL,
  `id_curso_horario` int(11) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin_prevista` date DEFAULT NULL,
  `fecha_fin_real` date DEFAULT NULL,
  `motivo` varchar(160) DEFAULT NULL,
  `estado` enum('VIGENTE','FINALIZADA','CANCELADA') NOT NULL DEFAULT 'VIGENTE',
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_designacion`
--

CREATE TABLE `personal_designacion` (
  `id_designacion` bigint(20) UNSIGNED NOT NULL,
  `id_vinculo` bigint(20) UNSIGNED NOT NULL,
  `id_cargo` int(10) UNSIGNED NOT NULL,
  `modalidad` varchar(80) NOT NULL DEFAULT 'Sin especificar',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` enum('VIGENTE','FINALIZADA') NOT NULL DEFAULT 'VIGENTE',
  `observacion` text DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_designacion`
--

INSERT INTO `personal_designacion` (`id_designacion`, `id_vinculo`, `id_cargo`, `modalidad`, `fecha_inicio`, `fecha_fin`, `estado`, `observacion`, `creado_por`, `creado_en`) VALUES
(1, 1, 1, 'Designación preexistente', NULL, NULL, 'VIGENTE', 'Migración inicial inferida del rol actual; fecha y modalidad deben verificarse documentalmente.', NULL, '2026-11-12 04:23:02'),
(2, 2, 1, 'Designación preexistente', NULL, NULL, 'VIGENTE', 'Migración inicial inferida del rol actual; fecha y modalidad deben verificarse documentalmente.', NULL, '2026-11-12 04:23:02'),
(3, 3, 2, 'Designación preexistente', NULL, NULL, 'VIGENTE', 'Migración inicial inferida del rol actual; fecha y modalidad deben verificarse documentalmente.', NULL, '2026-11-12 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_situacion`
--

CREATE TABLE `personal_situacion` (
  `id_situacion` bigint(20) UNSIGNED NOT NULL,
  `id_vinculo` bigint(20) UNSIGNED NOT NULL,
  `id_designacion` bigint(20) UNSIGNED DEFAULT NULL,
  `situacion` varchar(80) NOT NULL,
  `motivo` varchar(160) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin_prevista` date DEFAULT NULL,
  `fecha_fin_real` date DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `registrado_por` int(11) DEFAULT NULL,
  `registrado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_situacion`
--

INSERT INTO `personal_situacion` (`id_situacion`, `id_vinculo`, `id_designacion`, `situacion`, `motivo`, `fecha_inicio`, `fecha_fin_prevista`, `fecha_fin_real`, `observacion`, `registrado_por`, `registrado_en`) VALUES
(1, 1, NULL, 'SITUACION_NO_VERIFICADA', NULL, NULL, NULL, NULL, 'La situación laboral no se puede inferir del rol de acceso; verificar con legajo laboral.', NULL, '2026-11-12 04:23:02'),
(2, 2, NULL, 'SITUACION_NO_VERIFICADA', NULL, NULL, NULL, NULL, 'La situación laboral no se puede inferir del rol de acceso; verificar con legajo laboral.', NULL, '2026-11-12 04:23:02'),
(3, 3, NULL, 'SITUACION_NO_VERIFICADA', NULL, NULL, NULL, NULL, 'La situación laboral no se puede inferir del rol de acceso; verificar con legajo laboral.', NULL, '2026-11-12 04:23:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_vinculo`
--

CREATE TABLE `personal_vinculo` (
  `id_vinculo` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `creado_por` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_vinculo`
--

INSERT INTO `personal_vinculo` (`id_vinculo`, `id_usuario`, `fecha_inicio`, `fecha_fin`, `observacion`, `creado_por`, `creado_en`) VALUES
(1, 3, NULL, NULL, 'Vínculo preexistente inferido del rol; fecha de inicio desconocida, completar con documentación institucional.', NULL, '2026-11-12 04:23:02'),
(2, 48302809, NULL, NULL, 'Vínculo preexistente inferido del rol; fecha de inicio desconocida, completar con documentación institucional.', NULL, '2026-11-12 04:23:02'),
(3, 4, NULL, NULL, 'Vínculo preexistente inferido del rol; fecha de inicio desconocida, completar con documentación institucional.', NULL, '2026-11-12 04:23:02');

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
  `anio_validez` int(11) DEFAULT NULL,
  `anio_inicio_cursada` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `anio_fin_cursada` tinyint(3) UNSIGNED NOT NULL DEFAULT 7
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plan_estudio`
--

INSERT INTO `plan_estudio` (`id_plan`, `nombre`, `id_orientacion`, `id_regimen`, `codigo_resolucion`, `anio_validez`, `anio_inicio_cursada`, `anio_fin_cursada`) VALUES
(1, 'Plan 2026', 1, 1, 'Res-2026-001', 2026, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_regimen_evaluacion`
--

CREATE TABLE `plan_regimen_evaluacion` (
  `id_plan` int(11) NOT NULL,
  `id_regimen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plan_regimen_evaluacion`
--

INSERT INTO `plan_regimen_evaluacion` (`id_plan`, `id_regimen`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `previa`
--

CREATE TABLE `previa` (
  `id_previa` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_evaluacion`
--

CREATE TABLE `regimen_evaluacion` (
  `id_regimen` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo_calificacion` enum('text','int') NOT NULL,
  `nota_minima` int(11) NOT NULL,
  `escala_numerica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regimen_evaluacion`
--

INSERT INTO `regimen_evaluacion` (`id_regimen`, `nombre`, `tipo_calificacion`, `nota_minima`, `escala_numerica`) VALUES
(1, 'Estándar (Escala 1 a 10)', 'int', 1, 10),
(2, 'RITE (TEA, TEP, TED)', 'text', 1, 3),
(3, 'Estándar y RITE (TEA, TEP, TED)', 'text', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `id_rol_usuario` int(11) NOT NULL,
  `p_mod_notas` tinyint(1) DEFAULT 0,
  `p_asistencias` tinyint(1) DEFAULT 0,
  `p_asig_mate` tinyint(1) DEFAULT 0,
  `p_alta_alum` tinyint(1) DEFAULT 0,
  `p_baja_alum` tinyint(1) DEFAULT 0,
  `p_alta_baja_prof` tinyint(1) DEFAULT 0,
  `p_aprobar_exam` tinyint(1) DEFAULT 0,
  `p_asignar_rol_permiso` tinyint(1) DEFAULT 0,
  `p_carga_notas` tinyint(1) NOT NULL DEFAULT 0,
  `alta_baja_preceptor` tinyint(1) NOT NULL DEFAULT 0,
  `alta_baja_director` tinyint(1) NOT NULL DEFAULT 0,
  `p_modificar_plan_estudio` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `id_rol_usuario`, `p_mod_notas`, `p_asistencias`, `p_asig_mate`, `p_alta_alum`, `p_baja_alum`, `p_alta_baja_prof`, `p_aprobar_exam`, `p_asignar_rol_permiso`, `p_carga_notas`, `alta_baja_preceptor`, `alta_baja_director`, `p_modificar_plan_estudio`) VALUES
(1, 'root', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1),
(2, 'Profesor', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(3, 'Preceptor', 2, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 'Alumno', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Invitado', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Directivo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Padre/Tutor', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permiso`
--

CREATE TABLE `rol_permiso` (
  `id_rol` int(11) NOT NULL,
  `id_permiso` int(10) UNSIGNED NOT NULL,
  `permitido` tinyint(1) NOT NULL DEFAULT 1,
  `actualizado_por` int(11) DEFAULT NULL,
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol_permiso`
--

INSERT INTO `rol_permiso` (`id_rol`, `id_permiso`, `permitido`, `actualizado_por`, `actualizado_en`) VALUES
(1, 7, 1, NULL, '2026-11-12 03:03:24'),
(1, 8, 1, NULL, '2026-11-12 03:03:24'),
(1, 9, 1, NULL, '2026-11-12 03:03:24'),
(1, 11, 1, NULL, '2026-11-12 03:03:24'),
(1, 12, 1, NULL, '2026-11-12 03:03:24'),
(1, 13, 1, NULL, '2026-11-12 03:03:24'),
(1, 14, 1, NULL, '2026-11-12 03:03:24'),
(1, 15, 1, NULL, '2026-11-12 03:03:24'),
(1, 18, 1, NULL, '2026-11-12 03:03:24'),
(1, 19, 1, NULL, '2026-11-12 03:03:24'),
(1, 28, 1, NULL, '2026-11-12 03:03:24'),
(1, 30, 1, NULL, '2026-11-12 03:03:24'),
(1, 31, 1, NULL, '2026-11-12 03:03:24'),
(1, 32, 1, NULL, '2026-11-12 03:03:24'),
(1, 33, 1, NULL, '2026-11-12 03:03:24'),
(1, 34, 1, NULL, '2026-11-12 03:03:24'),
(1, 38, 1, NULL, '2026-11-12 03:03:24'),
(1, 39, 1, NULL, '2026-11-12 03:03:24'),
(1, 40, 1, NULL, '2026-11-12 03:03:24'),
(1, 41, 1, NULL, '2026-11-12 03:03:24'),
(1, 42, 1, NULL, '2026-11-12 03:03:24'),
(1, 43, 1, NULL, '2026-11-12 03:03:24'),
(1, 44, 1, NULL, '2026-11-12 03:03:24'),
(1, 47, 1, NULL, '2026-11-12 03:03:24'),
(1, 48, 1, NULL, '2026-11-12 03:03:24'),
(1, 49, 1, NULL, '2026-11-12 03:03:24'),
(1, 54, 1, NULL, '2026-11-12 03:03:24'),
(1, 55, 1, NULL, '2026-11-12 03:03:24'),
(1, 56, 1, NULL, '2026-11-12 03:03:24'),
(1, 57, 1, NULL, '2026-11-12 03:03:24'),
(1, 58, 1, NULL, '2026-11-12 03:03:24'),
(1, 59, 1, NULL, '2026-11-12 03:03:24'),
(1, 61, 1, NULL, '2026-11-12 03:03:24'),
(1, 76, 1, NULL, '2026-11-12 03:03:24'),
(1, 77, 1, NULL, '2026-11-12 03:03:24'),
(2, 7, 1, NULL, '2026-11-12 03:03:24'),
(2, 8, 1, NULL, '2026-11-12 03:03:24'),
(2, 9, 1, NULL, '2026-11-12 03:03:24'),
(2, 11, 1, NULL, '2026-11-12 03:03:24'),
(2, 18, 1, NULL, '2026-11-12 03:03:24'),
(2, 19, 1, NULL, '2026-11-12 03:03:24'),
(2, 54, 1, NULL, '2026-11-12 03:03:24'),
(2, 57, 1, NULL, '2026-11-12 03:03:24'),
(2, 77, 1, NULL, '2026-11-12 03:03:24'),
(3, 18, 1, NULL, '2026-11-12 03:03:24'),
(3, 19, 1, NULL, '2026-11-12 03:03:24'),
(3, 28, 1, NULL, '2026-11-12 03:03:24'),
(3, 30, 1, NULL, '2026-11-12 03:03:24'),
(3, 31, 1, NULL, '2026-11-12 03:03:24'),
(3, 32, 1, NULL, '2026-11-12 03:03:24'),
(3, 33, 1, NULL, '2026-11-12 03:03:24'),
(3, 34, 1, NULL, '2026-11-12 03:03:24'),
(3, 54, 1, NULL, '2026-11-12 03:03:24'),
(3, 57, 1, NULL, '2026-11-12 03:03:24'),
(3, 77, 1, NULL, '2026-11-12 03:03:24'),
(4, 77, 1, NULL, '2026-11-12 03:03:24'),
(5, 77, 1, NULL, '2026-11-12 03:03:24'),
(6, 7, 1, NULL, '2026-11-12 03:03:24'),
(6, 12, 1, NULL, '2026-11-12 03:03:24'),
(6, 13, 1, NULL, '2026-11-12 03:03:24'),
(6, 14, 1, NULL, '2026-11-12 03:03:24'),
(6, 15, 1, NULL, '2026-11-12 03:03:24'),
(6, 18, 1, NULL, '2026-11-12 03:03:24'),
(6, 21, 1, NULL, '2026-11-12 03:03:24'),
(6, 28, 1, NULL, '2026-11-12 03:03:24'),
(6, 30, 1, NULL, '2026-11-12 03:03:24'),
(6, 31, 1, NULL, '2026-11-12 03:03:24'),
(6, 32, 1, NULL, '2026-11-12 03:03:24'),
(6, 33, 1, NULL, '2026-11-12 03:03:24'),
(6, 34, 1, NULL, '2026-11-12 03:03:24'),
(6, 47, 1, NULL, '2026-11-12 03:03:24'),
(6, 54, 1, NULL, '2026-11-12 03:03:24'),
(6, 57, 1, NULL, '2026-11-12 03:03:24'),
(6, 75, 1, NULL, '2026-11-12 03:03:24'),
(6, 77, 1, NULL, '2026-11-12 03:03:24'),
(6, 78, 1, NULL, '2026-11-12 03:03:24'),
(6, 79, 1, NULL, '2026-11-12 03:03:24'),
(6, 95, 1, NULL, '2026-11-12 18:50:30'),
(7, 94, 1, NULL, '2026-11-12 18:50:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id_solicitud` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `aprobado` tinyint(1) DEFAULT 0,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id_solicitud`, `tipo`, `id_usuario`, `id_alumno`, `id_curso`, `id_materia`, `id_tipo`, `aprobado`, `fecha`, `id_nota`) VALUES
(1, 'modificar_nota', 1, 2, NULL, NULL, NULL, 1, '2026-11-07 18:52:47', 1),
(2, 'carga_nota', 1, NULL, 1, 1, 1, 2, '2026-11-07 20:18:23', NULL),
(4, 'Otro tipo de acceso institucional: alumno', 48244151, 48244151, NULL, NULL, NULL, 3, '2026-11-09 19:53:59', NULL),
(5, 'Otro tipo de acceso institucional: lo', 48302809, 48302809, NULL, NULL, NULL, 1, '2026-11-09 21:23:55', NULL),
(6, 'carga_nota', 48302809, NULL, 1, 2, 1, 0, '2026-11-11 00:45:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_invitado`
--

CREATE TABLE `solicitud_invitado` (
  `id_solicitud` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `categoria` varchar(80) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 pendiente, 1 aprobada, 3 rechazada',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_permiso`
--

CREATE TABLE `solicitud_permiso` (
  `id_solicitud_permiso` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permiso` int(10) UNSIGNED NOT NULL,
  `motivo` text NOT NULL,
  `tipo_duracion` enum('TEMPORAL','PERMANENTE') NOT NULL DEFAULT 'TEMPORAL',
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` datetime DEFAULT NULL,
  `estado` enum('PENDIENTE','APROBADA','RECHAZADA','CANCELADA') NOT NULL DEFAULT 'PENDIENTE',
  `id_resolutor` int(11) DEFAULT NULL,
  `motivo_resolucion` text DEFAULT NULL,
  `fecha_resolucion` datetime DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Administrador', 'Root', 12345678, 'root@escuela.com', '$2y$10$Szfy3jz.NxzUY0JytRZe/.PQ1Y81nWEwMGw1CB.YXhp9XE1EP92Ha', 1, 'Usuario root con acceso total', 1, NULL),
(2, 'Nombre2', 'Apellido2', 10000002, 'alumno2@escuela.com', '$2y$10$W4I4cYcZ9hex5rmq2iSAcOZjux/SqHVwmOUSQrs3WudbwLL7YrJmy', 1, 'Alumno 7° año informática', 4, 1),
(3, 'Nombre3', 'Apellido3', 0, 'alumno3@escuela.com', '$2y$10$Bqp4vId2hh.pi/zYMfbfu.Uk8H/vjpfebphRil7x30EQO5XegGCwW', 1, 'Alumno 7° año informática', 2, 1),
(4, 'Nombre4', 'Apellido4', 10000004, 'alumno4@escuela.com', '$2y$10$5f6c1HsGsGEiS0hbdvqIcujHsyuZzUDcuiZ8ktFCp5ebVl2u2k2pe', 1, 'Alumno 7° año informática', 3, 1),
(5, 'Nombre5', 'Apellido5', 10000005, 'alumno5@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(6, 'Nombre6', 'Apellido6', 10000006, 'alumno6@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(7, 'Nombre7', 'Apellido7', 10000007, 'alumno7@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(8, 'Nombre8', 'Apellido8', 10000008, 'alumno8@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(9, 'Nombre9', 'Apellido9', 10000009, 'alumno9@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(10, 'Nombre10', 'Apellido10', 10000010, 'alumno10@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(11, 'Nombre11', 'Apellido11', 10000011, 'alumno11@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(12, 'Nombre12', 'Apellido12', 10000012, 'alumno12@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(13, 'Nombre13', 'Apellido13', 10000013, 'alumno13@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(14, 'Nombre14', 'Apellido14', 10000014, 'alumno14@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(15, 'Nombre15', 'Apellido15', 10000015, 'alumno15@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(16, 'Nombre16', 'Apellido16', 10000016, 'alumno16@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(17, 'Nombre17', 'Apellido17', 10000017, 'alumno17@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(18, 'Nombre18', 'Apellido18', 10000018, 'alumno18@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(19, 'Nombre19', 'Apellido19', 10000019, 'alumno19@escuela.com', 'pass123', 1, 'Alumno 7° año informática', 4, 1),
(20, 'Malumno', 'Galumno', 10000020, 'alumno20@escuela.com', 'pass123', 0, 'Alumno 7° año informática', 4, 1),
(48244151, 'Brian', 'Ocampo', 48244151, 'brianocampo886@gmail.com', '$2y$10$chh6Ns6m8r/ObzMnP1HHQOu8qHDtMsvo1jfXDxjF9V6lCTgyehd6q', 1, 'alumno nuevo', 4, 1),
(48302809, 'pato', 'saucedo', 48302809, 'pato@gmail.com', '$2y$10$9jbbYMjVpzuxhzM4loE0Su1zJ1C45ULgx6umH3DuodDNIspnpSPfu', 1, 'Usuario registrado vía web (Invitado)', 2, NULL),
(48302810, 'Emanuel', 'Caballero', 48704361, 'emacaballer777@gmail.com', '$2y$10$HUu5eq0XZ5jAAWHyBsQmv.TqlR18IfTjKcNiG5NpaAp8uaqvxfdEi', 1, 'enano', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `id_usuario_permiso` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permiso` int(10) UNSIGNED NOT NULL,
  `efecto` enum('CONCEDER','DENEGAR') NOT NULL,
  `origen` enum('SOLICITUD','DIRECTIVO','ROOT','MIGRACION') NOT NULL DEFAULT 'SOLICITUD',
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_fin` datetime DEFAULT NULL,
  `estado` enum('ACTIVO','REVOCADO') NOT NULL DEFAULT 'ACTIVO',
  `motivo` text NOT NULL,
  `otorgado_por` int(11) DEFAULT NULL,
  `id_solicitud_permiso` bigint(20) UNSIGNED DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `revocado_en` datetime DEFAULT NULL,
  `revocado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 1),
(2, 48244151, 4),
(3, 48302809, 2),
(4, 2, 4),
(5, 3, 4),
(6, 4, 4),
(7, 5, 4),
(8, 6, 4),
(9, 7, 4),
(10, 8, 4),
(11, 9, 4),
(12, 10, 4),
(13, 11, 4),
(14, 12, 4),
(15, 13, 4),
(16, 14, 4),
(17, 15, 4),
(18, 16, 4),
(19, 17, 4),
(20, 18, 4),
(21, 19, 4),
(22, 20, 4),
(35, 48302810, 4);

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
-- Indices de la tabla `alumno_actuacion`
--
ALTER TABLE `alumno_actuacion`
  ADD PRIMARY KEY (`id_actuacion`),
  ADD KEY `idx_alumno_actuacion_usuario` (`id_usuario`);

--
-- Indices de la tabla `alumno_egreso`
--
ALTER TABLE `alumno_egreso`
  ADD PRIMARY KEY (`id_egreso`),
  ADD UNIQUE KEY `uq_alumno_egreso` (`id_usuario`),
  ADD KEY `fk_alumno_egreso_plan` (`id_plan`);

--
-- Indices de la tabla `alumno_inscripcion`
--
ALTER TABLE `alumno_inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `idx_alumno_inscripcion_ciclo` (`id_usuario`,`anio_lectivo`,`fecha_inicio`),
  ADD KEY `idx_alumno_inscripcion_curso` (`id_curso`,`anio_lectivo`);

--
-- Indices de la tabla `alumno_trayectoria`
--
ALTER TABLE `alumno_trayectoria`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `idx_alumno_trayectoria_usuario` (`id_usuario`),
  ADD KEY `idx_alumno_trayectoria_fecha` (`fecha_efectiva`),
  ADD KEY `fk_alumno_trayectoria_curso_origen` (`id_curso_origen`),
  ADD KEY `fk_alumno_trayectoria_curso_destino` (`id_curso_destino`);

--
-- Indices de la tabla `alumno_tutor`
--
ALTER TABLE `alumno_tutor`
  ADD PRIMARY KEY (`id_alumno_tutor`),
  ADD UNIQUE KEY `uq_alumno_tutor_activo` (`id_alumno`,`id_tutor`),
  ADD KEY `idx_alumno_tutor_tutor` (`id_tutor`,`activo`),
  ADD KEY `fk_alumno_tutor_creador` (`creado_por`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD UNIQUE KEY `id_asistencia` (`id_asistencia`),
  ADD UNIQUE KEY `uq_asistencia_fecha_horario` (`fecha`,`id_curso_horario`),
  ADD KEY `id_asistencia_2` (`id_asistencia`),
  ADD KEY `id_asistencia_3` (`id_asistencia`),
  ADD KEY `id_curso_horario` (`id_curso_horario`);

--
-- Indices de la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD UNIQUE KEY `uq_asistencia_detalle_alumno` (`id_asistencia`,`id_alumno`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_asistencia` (`id_asistencia`),
  ADD KEY `id_rol_usuario` (`id_rol_usuario`),
  ADD KEY `idx_asistencia_responsable` (`id_usuario_responsable`);

--
-- Indices de la tabla `auditoria_permiso`
--
ALTER TABLE `auditoria_permiso`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `idx_auditoria_permiso_fecha` (`fecha`),
  ADD KEY `idx_auditoria_permiso_usuario` (`id_usuario_afectado`,`fecha`),
  ADD KEY `fk_auditoria_permiso_permiso` (`id_permiso`),
  ADD KEY `fk_auditoria_permiso_actor` (`id_actor`);

--
-- Indices de la tabla `aula_login_attempts`
--
ALTER TABLE `aula_login_attempts`
  ADD PRIMARY KEY (`ip_hash`,`dni`),
  ADD KEY `idx_aula_login_blocked` (`blocked_until`);

--
-- Indices de la tabla `aula_sequences`
--
ALTER TABLE `aula_sequences`
  ADD PRIMARY KEY (`entity`);

--
-- Indices de la tabla `carga_notas`
--
ALTER TABLE `carga_notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD UNIQUE KEY `uq_carga_notas_instancia` (`id_usuario`,`id_materia`,`id_tipo`,`nro_instancia`),
  ADD KEY `id_usuario` (`id_usuario`,`id_materia`,`id_tipo`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `configuracion_sistema`
--
ALTER TABLE `configuracion_sistema`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `idx_configuracion_actualizado_por` (`actualizado_por`);

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
  ADD UNIQUE KEY `uq_detalle_plan_materia_plan` (`id_materia`,`id_plan`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Indices de la tabla `docente_curso_materia`
--
ALTER TABLE `docente_curso_materia`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD UNIQUE KEY `uq_docente_curso_materia_anio` (`id_docente`,`id_curso`,`id_materia`,`anio_lectivo`),
  ADD KEY `idx_dcm_curso_materia` (`id_curso`,`id_materia`),
  ADD KEY `fk_dcm_materia` (`id_materia`);

--
-- Indices de la tabla `estados_asistencia`
--
ALTER TABLE `estados_asistencia`
  ADD PRIMARY KEY (`id_estado`),
  ADD UNIQUE KEY `uq_estados_asistencia_codigo` (`codigo`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id_faltas`),
  ADD KEY `id_horas` (`id_horas`,`id_usuario`,`id_asistencia`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_asistencia` (`id_asistencia`);

--
-- Indices de la tabla `gestion_auditoria`
--
ALTER TABLE `gestion_auditoria`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `idx_gestion_auditoria_entidad` (`dominio`,`entidad`,`entidad_id`),
  ADD KEY `idx_gestion_auditoria_actor` (`id_actor`);

--
-- Indices de la tabla `gestion_notificacion`
--
ALTER TABLE `gestion_notificacion`
  ADD PRIMARY KEY (`id_notificacion`),
  ADD KEY `idx_gestion_notificacion_destino` (`id_usuario_destino`,`leida_en`);

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
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`),
  ADD UNIQUE KEY `uq_permiso_codigo` (`codigo`),
  ADD KEY `idx_permiso_modulo_activo` (`modulo`,`activo`);

--
-- Indices de la tabla `personal_cargo`
--
ALTER TABLE `personal_cargo`
  ADD PRIMARY KEY (`id_cargo`),
  ADD UNIQUE KEY `uq_personal_cargo_codigo` (`codigo`);

--
-- Indices de la tabla `personal_cobertura`
--
ALTER TABLE `personal_cobertura`
  ADD PRIMARY KEY (`id_cobertura`),
  ADD KEY `idx_cobertura_origen` (`id_designacion_origen`),
  ADD KEY `idx_cobertura_reemplazo` (`id_designacion_cobertura`),
  ADD KEY `idx_cobertura_asignacion` (`id_asignacion_docente`),
  ADD KEY `idx_cobertura_horario` (`id_curso_horario`);

--
-- Indices de la tabla `personal_designacion`
--
ALTER TABLE `personal_designacion`
  ADD PRIMARY KEY (`id_designacion`),
  ADD KEY `idx_designacion_vinculo` (`id_vinculo`),
  ADD KEY `idx_designacion_cargo` (`id_cargo`);

--
-- Indices de la tabla `personal_situacion`
--
ALTER TABLE `personal_situacion`
  ADD PRIMARY KEY (`id_situacion`),
  ADD KEY `idx_personal_situacion_vinculo` (`id_vinculo`),
  ADD KEY `idx_personal_situacion_designacion` (`id_designacion`),
  ADD KEY `idx_personal_situacion_fechas` (`fecha_inicio`,`fecha_fin_prevista`,`fecha_fin_real`);

--
-- Indices de la tabla `personal_vinculo`
--
ALTER TABLE `personal_vinculo`
  ADD PRIMARY KEY (`id_vinculo`),
  ADD KEY `idx_personal_vinculo_usuario` (`id_usuario`),
  ADD KEY `idx_personal_vinculo_vigencia` (`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `id_regimen` (`id_regimen`),
  ADD KEY `fk_plan_orientacion` (`id_orientacion`);

--
-- Indices de la tabla `plan_regimen_evaluacion`
--
ALTER TABLE `plan_regimen_evaluacion`
  ADD PRIMARY KEY (`id_plan`,`id_regimen`),
  ADD KEY `fk_pre_regimen` (`id_regimen`);

--
-- Indices de la tabla `previa`
--
ALTER TABLE `previa`
  ADD PRIMARY KEY (`id_previa`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_usuario` (`id_usuario`);

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
-- Indices de la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD PRIMARY KEY (`id_rol`,`id_permiso`),
  ADD KEY `fk_rol_permiso_permiso` (`id_permiso`),
  ADD KEY `fk_rol_permiso_actor` (`actualizado_por`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_nota` (`id_nota`),
  ADD KEY `id_nota_2` (`id_nota`),
  ADD KEY `idx_solicitud_estado_usuario` (`aprobado`,`id_usuario`,`tipo`),
  ADD KEY `idx_solicitud_carga` (`id_usuario`,`id_curso`,`id_materia`,`id_tipo`,`aprobado`);

--
-- Indices de la tabla `solicitud_invitado`
--
ALTER TABLE `solicitud_invitado`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `idx_solicitud_invitado_usuario_fecha` (`id_usuario`,`fecha`),
  ADD KEY `idx_solicitud_invitado_estado_fecha` (`estado`,`fecha`);

--
-- Indices de la tabla `solicitud_permiso`
--
ALTER TABLE `solicitud_permiso`
  ADD PRIMARY KEY (`id_solicitud_permiso`),
  ADD KEY `idx_solicitud_permiso_estado_fecha` (`estado`,`creado_en`),
  ADD KEY `idx_solicitud_permiso_usuario` (`id_usuario`,`estado`),
  ADD KEY `fk_solicitud_permiso_permiso` (`id_permiso`),
  ADD KEY `fk_solicitud_permiso_resolutor` (`id_resolutor`);

--
-- Indices de la tabla `tipo_nota`
--
ALTER TABLE `tipo_nota`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `uq_usuario_dni` (`dni`),
  ADD KEY `idx_usuario_id_rol` (`id_rol`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`id_usuario_permiso`),
  ADD KEY `idx_usuario_permiso_efectivo` (`id_usuario`,`id_permiso`,`estado`,`fecha_inicio`,`fecha_fin`),
  ADD KEY `idx_usuario_permiso_vencimiento` (`estado`,`fecha_fin`),
  ADD KEY `fk_usuario_permiso_permiso` (`id_permiso`),
  ADD KEY `fk_usuario_permiso_otorgante` (`otorgado_por`),
  ADD KEY `fk_usuario_permiso_solicitud` (`id_solicitud_permiso`),
  ADD KEY `fk_usuario_permiso_revocador` (`revocado_por`);

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
  ADD UNIQUE KEY `uq_version_plan_numero` (`id_plan`,`nro_version`),
  ADD KEY `fk_version_plan` (`id_plan`),
  ADD KEY `fk_version_usuario` (`id_usuario_creador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno_actuacion`
--
ALTER TABLE `alumno_actuacion`
  MODIFY `id_actuacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno_egreso`
--
ALTER TABLE `alumno_egreso`
  MODIFY `id_egreso` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno_inscripcion`
--
ALTER TABLE `alumno_inscripcion`
  MODIFY `id_inscripcion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `alumno_trayectoria`
--
ALTER TABLE `alumno_trayectoria`
  MODIFY `id_movimiento` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `alumno_tutor`
--
ALTER TABLE `alumno_tutor`
  MODIFY `id_alumno_tutor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auditoria_permiso`
--
ALTER TABLE `auditoria_permiso`
  MODIFY `id_auditoria` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carga_notas`
--
ALTER TABLE `carga_notas`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `docente_curso_materia`
--
ALTER TABLE `docente_curso_materia`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados_asistencia`
--
ALTER TABLE `estados_asistencia`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `gestion_auditoria`
--
ALTER TABLE `gestion_auditoria`
  MODIFY `id_evento` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gestion_notificacion`
--
ALTER TABLE `gestion_notificacion`
  MODIFY `id_notificacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `notas_modificadas`
--
ALTER TABLE `notas_modificadas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orientacion`
--
ALTER TABLE `orientacion`
  MODIFY `id_orientacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id_permiso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `personal_cargo`
--
ALTER TABLE `personal_cargo`
  MODIFY `id_cargo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_cobertura`
--
ALTER TABLE `personal_cobertura`
  MODIFY `id_cobertura` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_designacion`
--
ALTER TABLE `personal_designacion`
  MODIFY `id_designacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_situacion`
--
ALTER TABLE `personal_situacion`
  MODIFY `id_situacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_vinculo`
--
ALTER TABLE `personal_vinculo`
  MODIFY `id_vinculo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `solicitud_invitado`
--
ALTER TABLE `solicitud_invitado`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_permiso`
--
ALTER TABLE `solicitud_permiso`
  MODIFY `id_solicitud_permiso` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `id_usuario_permiso` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `version_plan`
--
ALTER TABLE `version_plan`
  MODIFY `id_version` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_actuacion`
--
ALTER TABLE `alumno_actuacion`
  ADD CONSTRAINT `fk_alumno_actuacion_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_egreso`
--
ALTER TABLE `alumno_egreso`
  ADD CONSTRAINT `fk_alumno_egreso_plan` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_egreso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_inscripcion`
--
ALTER TABLE `alumno_inscripcion`
  ADD CONSTRAINT `fk_alumno_inscripcion_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_inscripcion_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_trayectoria`
--
ALTER TABLE `alumno_trayectoria`
  ADD CONSTRAINT `fk_alumno_trayectoria_curso_destino` FOREIGN KEY (`id_curso_destino`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_trayectoria_curso_origen` FOREIGN KEY (`id_curso_origen`) REFERENCES `curso` (`id_curso`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_trayectoria_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `alumno_tutor`
--
ALTER TABLE `alumno_tutor`
  ADD CONSTRAINT `fk_alumno_tutor_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_tutor_creador` FOREIGN KEY (`creado_por`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_alumno_tutor_tutor` FOREIGN KEY (`id_tutor`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`id_curso_horario`) REFERENCES `curso_horario` (`id_curso_horario`);

--
-- Filtros para la tabla `asistencia_detalle`
--
ALTER TABLE `asistencia_detalle`
  ADD CONSTRAINT `asistencia_detalle_ibfk_2` FOREIGN KEY (`id_asistencia`) REFERENCES `asistencia` (`id_asistencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_asistencia_detalle_estado` FOREIGN KEY (`id_estado`) REFERENCES `estados_asistencia` (`id_estado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_asistencia_responsable_usuario` FOREIGN KEY (`id_usuario_responsable`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auditoria_permiso`
--
ALTER TABLE `auditoria_permiso`
  ADD CONSTRAINT `fk_auditoria_permiso_actor` FOREIGN KEY (`id_actor`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auditoria_permiso_afectado` FOREIGN KEY (`id_usuario_afectado`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auditoria_permiso_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`) ON DELETE SET NULL ON UPDATE CASCADE;

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
-- Filtros para la tabla `docente_curso_materia`
--
ALTER TABLE `docente_curso_materia`
  ADD CONSTRAINT `fk_dcm_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  ADD CONSTRAINT `fk_dcm_docente` FOREIGN KEY (`id_docente`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `fk_dcm_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id_horas`),
  ADD CONSTRAINT `faltas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `faltas_ibfk_3` FOREIGN KEY (`id_asistencia`) REFERENCES `asistencia` (`id_asistencia`);

--
-- Filtros para la tabla `gestion_notificacion`
--
ALTER TABLE `gestion_notificacion`
  ADD CONSTRAINT `fk_gestion_notificacion_usuario` FOREIGN KEY (`id_usuario_destino`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

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
-- Filtros para la tabla `personal_cobertura`
--
ALTER TABLE `personal_cobertura`
  ADD CONSTRAINT `fk_cobertura_asignacion` FOREIGN KEY (`id_asignacion_docente`) REFERENCES `docente_curso_materia` (`id_asignacion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cobertura_horario` FOREIGN KEY (`id_curso_horario`) REFERENCES `curso_horario` (`id_curso_horario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cobertura_origen` FOREIGN KEY (`id_designacion_origen`) REFERENCES `personal_designacion` (`id_designacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cobertura_reemplazo` FOREIGN KEY (`id_designacion_cobertura`) REFERENCES `personal_designacion` (`id_designacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_designacion`
--
ALTER TABLE `personal_designacion`
  ADD CONSTRAINT `fk_designacion_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `personal_cargo` (`id_cargo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_designacion_vinculo` FOREIGN KEY (`id_vinculo`) REFERENCES `personal_vinculo` (`id_vinculo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_situacion`
--
ALTER TABLE `personal_situacion`
  ADD CONSTRAINT `fk_personal_situacion_designacion` FOREIGN KEY (`id_designacion`) REFERENCES `personal_designacion` (`id_designacion`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_personal_situacion_vinculo` FOREIGN KEY (`id_vinculo`) REFERENCES `personal_vinculo` (`id_vinculo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_vinculo`
--
ALTER TABLE `personal_vinculo`
  ADD CONSTRAINT `fk_personal_vinculo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `plan_estudio`
--
ALTER TABLE `plan_estudio`
  ADD CONSTRAINT `fk_plan_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientacion` (`id_orientacion`),
  ADD CONSTRAINT `plan_estudio_ibfk_1` FOREIGN KEY (`id_regimen`) REFERENCES `regimen_evaluacion` (`id_regimen`);

--
-- Filtros para la tabla `plan_regimen_evaluacion`
--
ALTER TABLE `plan_regimen_evaluacion`
  ADD CONSTRAINT `fk_pre_plan` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pre_regimen` FOREIGN KEY (`id_regimen`) REFERENCES `regimen_evaluacion` (`id_regimen`);

--
-- Filtros para la tabla `previa`
--
ALTER TABLE `previa`
  ADD CONSTRAINT `previa_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD CONSTRAINT `fk_rol_permiso_actor` FOREIGN KEY (`actualizado_por`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rol_permiso_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rol_permiso_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `solicitud_ibfk_3` FOREIGN KEY (`id_nota`) REFERENCES `carga_notas` (`id_nota`);

--
-- Filtros para la tabla `solicitud_invitado`
--
ALTER TABLE `solicitud_invitado`
  ADD CONSTRAINT `fk_solicitud_invitado_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_permiso`
--
ALTER TABLE `solicitud_permiso`
  ADD CONSTRAINT `fk_solicitud_permiso_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_permiso_resolutor` FOREIGN KEY (`id_resolutor`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_permiso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol_principal` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_usuario_permiso_otorgante` FOREIGN KEY (`otorgado_por`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_permiso_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_permiso_revocador` FOREIGN KEY (`revocado_por`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_permiso_solicitud` FOREIGN KEY (`id_solicitud_permiso`) REFERENCES `solicitud_permiso` (`id_solicitud_permiso`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_permiso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usuario_rol_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `usuario_rol_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `version_plan`
--
ALTER TABLE `version_plan`
  ADD CONSTRAINT `fk_version_plan_creador` FOREIGN KEY (`id_usuario_creador`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `version_plan_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan_estudio` (`id_plan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
