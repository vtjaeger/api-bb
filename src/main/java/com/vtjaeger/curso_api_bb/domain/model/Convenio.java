package com.vtjaeger.curso_api_bb.domain.model;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@Entity
@Table(name = "tb_convenio")
public class Convenio extends BaseEntity {
    private String numeroContrato;
    private String carteira;
    private String variacaoCarteira;
    private BigDecimal jurosPorcentagem;
    private BigDecimal multaPorcentagem;
    @ManyToOne
    @JoinColumn(name = "conta_id")
    private Conta conta;

}
