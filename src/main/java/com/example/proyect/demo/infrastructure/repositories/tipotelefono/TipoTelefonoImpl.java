package com.example.proyect.demo.infrastructure.repositories.tipotelefono;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.proyect.demo.application.services.ITipoTelefonoService;
import com.example.proyect.demo.domain.entities.TipoTelefono;

@Service
public class TipoTelefonoImpl implements ITipoTelefonoService {
    @Autowired
    private TipoTelefonoRepository repository;


    @Transactional(readOnly = true)
    @Override
    public List<TipoTelefono> findAll() {
        return (List<TipoTelefono>) repository.findAll();
    }

    @Override
    public Optional<TipoTelefono> findById(int id) {
        return repository.findById(id);
    } 

    @Override
    public TipoTelefono save(TipoTelefono tipoTelefono) {
        return repository.save(tipoTelefono);
    }

    @Override
    public Optional<TipoTelefono> update(int id, TipoTelefono tipoTelefono) {
        Optional<TipoTelefono> tipoTelefonoOptional = repository.findById(id);
        if (tipoTelefonoOptional.isPresent()) {
            TipoTelefono tipoTelefonoDb = tipoTelefonoOptional.orElseThrow();
            tipoTelefonoDb.setDescripcion(tipoTelefono.getDescripcion());
            return Optional.of(repository.save(tipoTelefonoDb));
        }
        return tipoTelefonoOptional;
    }

    @Override
    public Optional<TipoTelefono> delete(int id) {
        Optional<TipoTelefono> productoOptional = repository.findById(id);
        productoOptional.ifPresent(productDb -> {
            repository.delete(productDb);
        });
        return productoOptional;
    }
}
