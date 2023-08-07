-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fifa_wwc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fifa_wwc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fifa_wwc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `fifa_wwc` ;

-- -----------------------------------------------------
-- Table `fifa_wwc`.`equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fifa_wwc`.`equipos` (
  `idEquipo` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fifa_wwc`.`esp_plantilla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fifa_wwc`.`esp_plantilla` (
  `idEsp` INT NOT NULL,
  `Dorsal` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `equipos_idEquipo` INT NOT NULL,
  PRIMARY KEY (`idEsp`, `equipos_idEquipo`),
  INDEX `fk_esp_plantilla_equipos_idx` (`equipos_idEquipo` ASC) VISIBLE,
  CONSTRAINT `fk_esp_plantilla_equipos`
    FOREIGN KEY (`equipos_idEquipo`)
    REFERENCES `fifa_wwc`.`equipos` (`idEquipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fifa_wwc`.`partidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fifa_wwc`.`partidos` (
  `idPartido` INT NOT NULL,
  `local_team` VARCHAR(45) NOT NULL,
  `away_team` VARCHAR(45) NOT NULL,
  `result` VARCHAR(45) NOT NULL,
  `equipos_idEquipo` INT NOT NULL,
  PRIMARY KEY (`idPartido`, `equipos_idEquipo`),
  INDEX `fk_Partidos_equipos1_idx` (`equipos_idEquipo` ASC) VISIBLE,
  CONSTRAINT `fk_Partidos_equipos1`
    FOREIGN KEY (`equipos_idEquipo`)
    REFERENCES `fifa_wwc`.`equipos` (`idEquipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fifa_wwc`.`stats_spain_vs_zambia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fifa_wwc`.`stats_spain_vs_zambia` (
  `idStats` INT NOT NULL,
  `Spain` VARCHAR(45) NOT NULL,
  `Categoria` VARCHAR(45) NOT NULL,
  `Zambia` VARCHAR(45) NOT NULL,
  `partidos_idPartido` INT NOT NULL,
  `partidos_equipos_idEquipo` INT NOT NULL,
  PRIMARY KEY (`idStats`, `partidos_idPartido`, `partidos_equipos_idEquipo`),
  INDEX `fk_stats_partidos_partidos1_idx` (`partidos_idPartido` ASC, `partidos_equipos_idEquipo` ASC) VISIBLE,
  CONSTRAINT `fk_stats_partidos_partidos1`
    FOREIGN KEY (`partidos_idPartido` , `partidos_equipos_idEquipo`)
    REFERENCES `fifa_wwc`.`partidos` (`idPartido` , `equipos_idEquipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fifa_wwc`.`zamb_plantilla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fifa_wwc`.`zamb_plantilla` (
  `idZamb` INT NOT NULL,
  `Dorsal` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `equipos_idEquipo` INT NOT NULL,
  PRIMARY KEY (`idZamb`, `equipos_idEquipo`),
  INDEX `fk_zamb_plantilla_equipos1_idx` (`equipos_idEquipo` ASC) VISIBLE,
  CONSTRAINT `fk_zamb_plantilla_equipos1`
    FOREIGN KEY (`equipos_idEquipo`)
    REFERENCES `fifa_wwc`.`equipos` (`idEquipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fifa_wwc`.`equipos`
-- -----------------------------------------------------
START TRANSACTION;
USE `fifa_wwc`;
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (1, 'Spain');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (2, 'Zambia');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (3, 'Swiss');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (4, 'Norway');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (5, 'NewZeland');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (6, 'Philippines');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (7, 'Australia');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (8, 'Nigeria');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (9, 'Canada');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (10, 'Irland');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (11, 'Japan');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (12, 'CostaRica');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (13, 'England');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (14, 'Denmark');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (15, 'China');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (16, 'Haiti');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (17, 'Netherland');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (18, 'USA');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (19, 'Portugal');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (20, 'Vietnam');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (21, 'France');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (22, 'Jamaica');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (23, 'Brasil');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (24, 'Panama');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (25, 'Sweden');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (26, 'SouthAfrica');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (27, 'Italy');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (28, 'Argentina');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (29, 'Colombia');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (30, 'Morrocco');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (31, 'Germany');
INSERT INTO `fifa_wwc`.`equipos` (`idEquipo`, `Nombre`) VALUES (32, 'SouthKorea');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fifa_wwc`.`esp_plantilla`
-- -----------------------------------------------------
START TRANSACTION;
USE `fifa_wwc`;
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (1, 1, 'MarÃ­a Isabel RodrÃ­guez Rivero', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (2, 19, 'Olga Carmona', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (3, 3, 'Teresa Abelleira', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (4, 4, 'Irene Paredes', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (5, 5, 'Ivana AndrÃ©s', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (6, 10, 'Jenni Hermoso', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (7, 8, 'MarÃ­a Francesca Caldentey Oliver', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (8, 18, 'Salma Paralluelo', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (9, 11, 'Alexia Putellas', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (10, 6, 'Aitana Bonmati', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (11, 2, 'Ona Batlle', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (12, 12, 'Oihane HernÃ¡ndez', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (13, 7, 'Irene Guerrero', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (14, 17, 'Alba Redondo', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (15, 15, 'Eva Navarro', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (16, 22, 'Athenea del Castillo', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (17, 14, 'Laia Codina', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (18, 9, 'Esther Gonzalez', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (19, 20, 'Rocio Galvez', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (20, 16, 'Maria Perez', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (21, 23, 'Catalina ThomÃ¡s Coll Lluch', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (22, 13, 'Enith SalÃ³n', 1);
INSERT INTO `fifa_wwc`.`esp_plantilla` (`idEsp`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (23, 21, 'Claudia Zornoza', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `fifa_wwc`.`partidos`
-- -----------------------------------------------------
START TRANSACTION;
USE `fifa_wwc`;
INSERT INTO `fifa_wwc`.`partidos` (`idPartido`, `local_team`, `away_team`, `result`, `equipos_idEquipo`) VALUES (1, 'Spain', 'Zambia', '5-0', 1);
INSERT INTO `fifa_wwc`.`partidos` (`idPartido`, `local_team`, `away_team`, `result`, `equipos_idEquipo`) VALUES (1, 'Spain', 'Zambia', '5-0', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `fifa_wwc`.`stats_spain_vs_zambia`
-- -----------------------------------------------------
START TRANSACTION;
USE `fifa_wwc`;
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (1, '76%', 'POSESION', '24%', 1, 1);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (2, '5', 'GOLES', '0', 1, 1);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (3, '9', 'CORNERS', '3', 1, 1);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (4, '14', 'DISPAROS A PUERTA', '2', 1, 1);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (5, '5', 'DISPAROS FUERA', '5', 1, 1);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (1, '76%', 'POSESION', '24%', 1, 2);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (2, '5', 'GOLES', '0', 1, 2);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (3, '9', 'CORNERS', '3', 1, 2);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (4, '14', 'DISPAROS A PUERTA', '2', 1, 2);
INSERT INTO `fifa_wwc`.`stats_spain_vs_zambia` (`idStats`, `Spain`, `Categoria`, `Zambia`, `partidos_idPartido`, `partidos_equipos_idEquipo`) VALUES (5, '5', 'DISPAROS FUERA', '5', 1, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `fifa_wwc`.`zamb_plantilla`
-- -----------------------------------------------------
START TRANSACTION;
USE `fifa_wwc`;
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (1, 18, 'Eunice Sakala', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (2, 8, 'Margaret Belemu', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (3, 13, 'Martha Tembo', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (4, 15, 'Agness Musesa', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (5, 14, 'Ireen Lungu', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (6, 11, 'Barbra Banda', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (7, 17, 'Racheal Kundananji', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (8, 4, 'Susan Banda', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (9, 19, 'Siomala Mapepa', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (10, 12, 'Evarine Katongo', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (11, 3, 'Lushomo Mweemba', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (12, 6, 'Mary Wilombe', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (13, 23, 'Vast Phiri', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (14, 21, 'Avell Chitundu', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (15, 7, 'Ochumba Lubandji', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (16, 10, 'Comfort Selemani', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (17, 20, 'Hellen Chanda', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (18, 2, 'Judith Soko', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (19, 9, 'Hellen Mubanga', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (20, 5, 'Mary Mulenga', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (21, 22, 'Esther Banda', 2);
INSERT INTO `fifa_wwc`.`zamb_plantilla` (`idZamb`, `Dorsal`, `Nombre`, `equipos_idEquipo`) VALUES (22, 16, 'Leticia Lungu', 2);

COMMIT;

