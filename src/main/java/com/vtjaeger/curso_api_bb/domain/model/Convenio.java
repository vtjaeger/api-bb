package com.vtjaeger.curso_api_bb.domain.model;

import java.math.BigDecimal;

public class Convenio extends BaseEntity {
    private String numeroContrato;
    private String carteira;
    private String variacaoCarteira;
    private BigDecimal jurosPorcentagem;
    private BigDecimal multaPorcentagem;
    private Conta conta;

}
