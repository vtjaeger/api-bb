package com.vtjaeger.curso_api_bb.domain.model;

public class Pessoa extends BaseEntity {
    private String nome;
    private String documento;
    private boolean pessoaFisica;
    private Endereco endereco;
}
