package com.vtjaeger.curso_api_bb.domain.model;

import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tb_empresa")
public class Empresa extends BaseEntity {
    private String razaoSocial;
    private String cnpj;
    @Embedded
    private Endereco endereco;
}
