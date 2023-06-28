/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : bd_minimarket

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 28/06/2023 09:04:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `IdCliente` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Dni` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Nombres` varchar(244) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Direccion` varchar(244) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (17, '2', 'Juan Guerrero Solis', 'Los Alamos', '1');
INSERT INTO `cliente` VALUES (18, '1', 'Maria Rosas Villanueva', 'Los Laureles 234', '1');
INSERT INTO `cliente` VALUES (19, '3', 'Andres de Santa Cruz', 'Av. La Frontera 347', '1');
INSERT INTO `cliente` VALUES (20, '4', 'Andres Mendoza', 'Chosica, Lurigancho', '1');

-- ----------------------------
-- Table structure for detalle_ventas
-- ----------------------------
DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE `detalle_ventas`  (
  `IdDetalleVentas` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdVentas` int UNSIGNED NOT NULL,
  `IdProducto` int UNSIGNED NOT NULL,
  `Cantidad` int UNSIGNED NULL DEFAULT NULL,
  `PrecioVenta` double NULL DEFAULT NULL,
  PRIMARY KEY (`IdDetalleVentas`, `IdVentas`, `IdProducto`) USING BTREE,
  INDEX `Ventas_has_Producto_FKIndex1`(`IdVentas` ASC) USING BTREE,
  INDEX `Ventas_has_Producto_FKIndex2`(`IdProducto` ASC) USING BTREE,
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`IdVentas`) REFERENCES `ventas` (`IdVentas`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle_ventas
-- ----------------------------

-- ----------------------------
-- Table structure for empleado
-- ----------------------------
DROP TABLE IF EXISTS `empleado`;
CREATE TABLE `empleado`  (
  `IdEmpleado` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Dni` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Nombres` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Telefono` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `User` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empleado
-- ----------------------------
INSERT INTO `empleado` VALUES (1, '123', 'Pedro Hernandez', '988252459', '1', 'emp01');
INSERT INTO `empleado` VALUES (2, '123', 'Roman Riquelme', '988252459', '1', 'Jo46');
INSERT INTO `empleado` VALUES (3, '123', 'Palermo Suarez', '453536458', '1', 'Em22');

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `IdProducto` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(244) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Precio` double NULL DEFAULT NULL,
  `Stock` int UNSIGNED NULL DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (1, 'Teclado Logitech 345 Editado', 150, 99, '1');
INSERT INTO `producto` VALUES (2, 'Mouse Logitech 567', 20, 98, '1');
INSERT INTO `producto` VALUES (3, 'Laptop Lenovo Ideapad 520', 800, 100, '1');
INSERT INTO `producto` VALUES (4, 'HeadPhones Sony M333', 500, 98, '1');
INSERT INTO `producto` VALUES (7, 'Producto Nuevo w', 22, 35, '1');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `IdVentas` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdCliente` int UNSIGNED NOT NULL,
  `IdEmpleado` int UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `FechaVentas` date NULL DEFAULT NULL,
  `Monto` double NULL DEFAULT NULL,
  `Estado` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdVentas`) USING BTREE,
  INDEX `Ventas_FKIndex1`(`IdEmpleado` ASC) USING BTREE,
  INDEX `Ventas_FKIndex2`(`IdCliente` ASC) USING BTREE,
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ventas
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
