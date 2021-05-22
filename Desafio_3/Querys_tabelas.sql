create database bdgamaxp;

use bdgamaxp;

-- TABELA DEPARTAMENTOS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`departamentos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

-- TABELA ESTOQUES
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`estoques` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` INT NULL,
  `quantidade` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

-- TABELA PRODUTOS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` INT NULL,
  `descricao` VARCHAR(150) NOT NULL,
  `valor` FLOAT NOT NULL,
  `disponivel` TINYINT(1) NULL,
  `emdestaque` TINYINT(1) NULL,
  `departamentos_id` INT NOT NULL,
  `estoques_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_departamentos1_idx` (`departamentos_id` ASC) VISIBLE,
  INDEX `fk_produtos_estoques1_idx` (`estoques_id` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_departamentos1`
    FOREIGN KEY (`departamentos_id`)
    REFERENCES `bdgamaxp`.`departamentos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_estoques1`
    FOREIGN KEY (`estoques_id`)
    REFERENCES `bdgamaxp`.`estoques` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

-- TABELA STATUS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

-- TABELA CLIENTES
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`clientes` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `email` VARCHAR(100) NULL,
  `senha` VARCHAR(10) NULL,
  `telefone` VARCHAR(15) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB

-- TABELA PEDIDOS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NULL,
  `status_id` INT NOT NULL,
  `clientes_ID` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pedidos_status1_idx` (`status_id` ASC) VISIBLE,
  INDEX `fk_pedidos_clientes1_idx` (`clientes_ID` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_status1`
    FOREIGN KEY (`status_id`)
    REFERENCES `bdgamaxp`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_clientes1`
    FOREIGN KEY (`clientes_ID`)
    REFERENCES `bdgamaxp`.`clientes` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

-- TABELA PEDIDOS PRODUTOS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`pedidosprodutos` (
  `pedidos_id` INT NOT NULL,
  `produtos_id` INT NOT NULL,
  `valortotal` FLOAT NULL,
  PRIMARY KEY (`pedidos_id`, `produtos_id`),
  INDEX `fk_pedidos_has_produtos_produtos1_idx` (`produtos_id` ASC) VISIBLE,
  INDEX `fk_pedidos_has_produtos_pedidos1_idx` (`pedidos_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_has_produtos_pedidos1`
    FOREIGN KEY (`pedidos_id`)
    REFERENCES `bdgamaxp`.`pedidos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_has_produtos_produtos1`
    FOREIGN KEY (`produtos_id`)
    REFERENCES `bdgamaxp`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

-- TABELA CIDADES ESTADOS
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`cidadesEstados` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(70) NULL,
  `estado` VARCHAR(70) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

-- TABELA ENDERECO
CREATE TABLE IF NOT EXISTS `bdgamaxp`.`enderecos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipologradouro` VARCHAR(30) NULL,
  `logradouro` VARCHAR(30) NULL,
  `numero` INT NULL,
  `complemento` VARCHAR(150) NULL,
  `cep` VARCHAR(15) NULL,
  `bairro` VARCHAR(70) NULL,
  `clientes_ID` INT NOT NULL,
  `cidadesEstados_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_enderecos_clientes_idx` (`clientes_ID` ASC) VISIBLE,
  INDEX `fk_enderecos_cidadesEstados1_idx` (`cidadesEstados_id` ASC) VISIBLE,
  CONSTRAINT `fk_enderecos_clientes`
    FOREIGN KEY (`clientes_ID`)
    REFERENCES `bdgamaxp`.`clientes` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_enderecos_cidadesEstados1`
    FOREIGN KEY (`cidadesEstados_id`)
    REFERENCES `bdgamaxp`.`cidadesEstados` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB



