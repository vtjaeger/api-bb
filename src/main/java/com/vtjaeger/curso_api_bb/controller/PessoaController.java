package com.vtjaeger.curso_api_bb.controller;

import com.vtjaeger.curso_api_bb.domain.model.Pessoa;
import com.vtjaeger.curso_api_bb.domain.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/pessoas")
public class PessoaController {
    @Autowired
    private PessoaRepository pessoaRepository;
    @GetMapping
    public List<Pessoa> listar(){
        List<Pessoa> pessoaList = pessoaRepository.findAll();
        return pessoaList;
    }
}
