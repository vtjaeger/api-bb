package com.vtjaeger.curso_api_bb.domain.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Fatura extends BaseEntity {
    private BigDecimal valor;
    private LocalDate dataVencimento;
    private TipoFatura tipo;
    private TipoPagamento tipoPagamento;
    private SituacaoFatura situacao;
    private String numeroDocumento;
    private String nossoNumero;
    private Conta conta;
    private Empresa empresa;
    private Convenio convenio;
    private Pessoa pessoa;
}
