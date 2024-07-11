package com.vtjaeger.curso_api_bb.domain.model;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tb_conta")
public class Conta extends BaseEntity {
    private String agencia;
    private String conta;
    private String digitoAgencia;
    private String digitoConta;
    @ManyToOne
    @JoinColumn(name = "banco_id")
    private Banco banco;
    @ManyToOne
    @JoinColumn(name = "empresa_id")
    private Empresa empresa;

}
