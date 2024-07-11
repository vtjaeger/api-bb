package com.vtjaeger.curso_api_bb.domain.repository;

import com.vtjaeger.curso_api_bb.domain.model.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
}
