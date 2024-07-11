CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `razao_social` VARCHAR(70) NOT NULL,
  `cnpj` VARCHAR(20) NOT NULL,
  `endereco_logradouro` VARCHAR(70) NOT NULL,
  `endereco_numero` VARCHAR(10) NOT NULL,
  `endereco_cidade` VARCHAR(70) NOT NULL,
  `endereco_bairro` VARCHAR(70) NOT NULL,
  `endereco_complemento` VARCHAR(40) NULL,
  `endereco_uf` VARCHAR(2) NOT NULL,
  `endereco_cep` VARCHAR(20) NOT NULL,
  `criado_em` DATETIME NOT NULL,
  `atualizado_em` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS `tb_banco` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `criado_em` DATETIME NOT NULL,
  `atualizado_em` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS `tb_conta` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `empresa_id` BIGINT UNSIGNED NOT NULL,
  `agencia` VARCHAR(10) NOT NULL,
  `conta` VARCHAR(15) NOT NULL,
  `digito_agencia` VARCHAR(1) NULL,
  `digito_conta` VARCHAR(1) NOT NULL,
  `banco_id` BIGINT UNSIGNED NOT NULL,
  `criado_em` DATETIME NOT NULL,
  `atualizado_em` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_conta_empresa1_idx` (`empresa_id` ASC),
  INDEX `fk_conta_banco1_idx` (`banco_id` ASC),
  CONSTRAINT `fk_conta_empresa1`
    FOREIGN KEY (`empresa_id`)
    REFERENCES `tb_empresa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_conta_banco1`
    FOREIGN KEY (`banco_id`)
    REFERENCES `tb_banco` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS `tb_convenio` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `conta_id` BIGINT UNSIGNED NOT NULL,
  `numero_contrato` VARCHAR(30) NOT NULL,
  `carteira` VARCHAR(5) NOT NULL,
  `variacao_carteira` VARCHAR(5) NULL,
  `juros_porcentagem` DECIMAL(10,2) NULL,
  `multa_porcentagem` DECIMAL(10,2) NULL,
  `criado_em` DATETIME NOT NULL,
  `atualizado_em` DATETIME NOT NULL,
  `api_client_id` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_convenio_conta1_idx` (`conta_id` ASC),
  CONSTRAINT `fk_convenio_conta1`
    FOREIGN KEY (`conta_id`)
    REFERENCES `tb_conta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS `tb_fatura` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `valor` DECIMAL(10,2) NOT NULL,
  `data_vencimento` DATETIME NOT NULL,
  `tipo` VARCHAR(30) NOT NULL,
  `situacao` VARCHAR(20) NOT NULL,
  `numero_documento` VARCHAR(20) NULL,
  `nosso_numero` VARCHAR(30) NULL,
  `tipo_pagamento` VARCHAR(45) NOT NULL,
  `conta_id` BIGINT UNSIGNED NOT NULL,
  `convenio_id` BIGINT UNSIGNED NOT NULL,
  `pessoa_id` BIGINT UNSIGNED NOT NULL,
  `criado_em` DATETIME NOT NULL,
  `atualizado_em` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_fatura_conta1_idx` (`conta_id` ASC),
  INDEX `fk_fatura_convenio1_idx` (`convenio_id` ASC),
  INDEX `fk_fatura_pessoa1_idx` (`pessoa_id` ASC),
  CONSTRAINT `fk_fatura_conta1`
    FOREIGN KEY (`conta_id`)
    REFERENCES `tb_conta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fatura_convenio1`
    FOREIGN KEY (`convenio_id`)
    REFERENCES `tb_convenio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fatura_pessoa1`
    FOREIGN KEY (`pessoa_id`)
    REFERENCES `tb_pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
