package com.vtjaeger.curso_api_bb.domain.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tb_banco")
public class Banco extends BaseEntity {
    private String codigo;
    private String nome;
}
