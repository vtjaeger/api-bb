package com.vtjaeger.curso_api_bb.domain.model;

import jakarta.persistence.Embeddable;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tb_pessoa")
public class Pessoa extends BaseEntity {
    private String nome;
    private String documento;
    private boolean pessoaFisica;
    @Embedded
    private Endereco endereco;
}
