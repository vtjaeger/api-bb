INSERT INTO `tb_banco` (`codigo`, `nome`, `criado_em`, `atualizado_em`)
VALUES ('001', 'Banco do Brasil', utc_timestamp(), utc_timestamp());

INSERT INTO `tb_empresa` (`razao_social`, `cnpj`, `endereco_logradouro`, `endereco_numero`, `endereco_cidade`, `endereco_bairro`, `endereco_uf`, `endereco_cep`, `criado_em`, `atualizado_em`)
VALUES ('Rafael e Vitor Doces & Salgados Ltda', '43347493000143', 'Av Dr Cândido Motta Filho', '613', 'São Paulo', 'Vila São Francisco', 'SP', '05351-001', utc_timestamp(), utc_timestamp());

INSERT INTO `tb_conta` (`empresa_id`, `agencia`, `conta`, `digito_agencia`, `digito_conta`, `banco_id`, `criado_em`, `atualizado_em`)
VALUES (1, '452', '123873', 'x', '5', 1, utc_timestamp(), utc_timestamp());

INSERT INTO `tb_convenio` (`conta_id`, `numero_contrato`, `carteira`, `variacao_carteira`, `juros_porcentagem`, `multa_porcentagem`, `criado_em`, `atualizado_em`)
VALUES (1, '3128557', '17', '35', '1', '2', utc_timestamp(), utc_timestamp());

INSERT INTO `tb_pessoa` (`criado_em`, `atualizado_em`, `nome`, `documento`, `pessoa_fisica`, `endereco_logradouro`, `endereco_numero`, `endereco_bairro`, `endereco_cidade`, `endereco_uf`, `endereco_cep`)
VALUES (utc_timestamp(), utc_timestamp(), 'Cláudio Antonio Cauê Pereira', '96050176876', true, 'Alameda da Alfazema', '134', 'Loteamento Jardins Siena', 'Araguaína', 'TO', '77828-536');

INSERT INTO `tb_pessoa` (`criado_em`, `atualizado_em`, `nome`, `documento`, `pessoa_fisica`, `endereco_logradouro`, `endereco_numero`, `endereco_bairro`, `endereco_cidade`, `endereco_uf`, `endereco_cep`)
VALUES (utc_timestamp(), utc_timestamp(), 'Carla Rafaela Pereira', '96050176876', true, 'Av Arnoldo Almeida Pires', '724', 'Cidade Aracy', 'São Carlos', 'SP', '13573-140');
