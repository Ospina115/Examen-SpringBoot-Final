package com.example.proyect.demo.infrastructure.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.proyect.demo.application.services.ITipoTelefonoService;
import com.example.proyect.demo.domain.entities.TipoTelefono;



@RestController
@RequestMapping("/tptelefonos")
public class TipoTelefonoController {
    @Autowired
    private ITipoTelefonoService tipoTelefonoService;

    @GetMapping
    public List<TipoTelefono> list(){
        return tipoTelefonoService.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<?> view(@PathVariable int id) {
        Optional<TipoTelefono> regionOptional = tipoTelefonoService.findById(id);
        return regionOptional.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
    
    @PostMapping()
    public ResponseEntity<?> create(@RequestBody TipoTelefono tipoTelefono) {
        return ResponseEntity.status(HttpStatus.CREATED).body(tipoTelefonoService.save(tipoTelefono));
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> update(@PathVariable int id, @RequestBody TipoTelefono tipoTelefono) {
        Optional<TipoTelefono> updateProduct = tipoTelefonoService.update(id, tipoTelefono);
        return updateProduct.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable int id) {
        Optional<TipoTelefono> productoDelete =tipoTelefonoService.delete(id);
        return productoDelete.map(c -> ResponseEntity.ok().build()).orElseGet(() -> ResponseEntity.notFound().build());
    }
}
