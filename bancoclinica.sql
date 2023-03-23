CREATE DATABASE bdClinica;
USE bdClinica;

CREATE TABLE `tbPaciente` (
  `codPaciente` INT PRIMARY KEY AUTO_INCREMENT,
  `nomePaciente` VARCHAR(100),
  `telPaciente` VARCHAR(45),
  `celPaciente` VARCHAR(45));
  
  select * from tbpaciente;
  
CREATE TABLE `tbespecialidade` (
	`codEspecialidade` INT PRIMARY KEY AUTO_INCREMENT,
    `Especialidade` VARCHAR(100));

SELECT * FROM  tbespecialidade;
    
CREATE TABLE `tbmedico` (
  `codMedico` INT PRIMARY KEY AUTO_INCREMENT,
  `nomeMedico` VARCHAR(100),
  `telMedico` VARCHAR(45),
  `celMedico` VARCHAR(45),
  `Especialidade` int,
  FOREIGN KEY(Especialidade) references tbespecialidade(codEspecialidade)
  );
  
  CREATE TABLE `tbagendamento` (
  `codAgendamento` INT PRIMARY KEY AUTO_INCREMENT,
  `dataAgendamento` VARCHAR(100),
  `horaAgendamento` VARCHAR(45),
  `nomePaciente` int,
  `nomeMedico` int,
  FOREIGN KEY (`nomePaciente`) REFERENCES `tbpaciente`(`codPaciente`),
  FOREIGN KEY (`nomeMedico`) REFERENCES `tbmedico`(`codMedico`),
  `diagnosticoAgendamento` VARCHAR(150)
);