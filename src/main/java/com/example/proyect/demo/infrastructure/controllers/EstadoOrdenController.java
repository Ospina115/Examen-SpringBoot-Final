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

import com.example.proyect.demo.application.services.IEstadoOrdenService;
import com.example.proyect.demo.domain.entities.EstadoOrden;


@RestController
@RequestMapping("/estordenes")
public class EstadoOrdenController {
    @Autowired
    private IEstadoOrdenService estadoOrdenService;

    @GetMapping
    public List<EstadoOrden> list(){
        return estadoOrdenService.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<?> view(@PathVariable int id) {
        Optional<EstadoOrden> regionOptional = estadoOrdenService.findById(id);
        return regionOptional.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }
    
    @PostMapping()
    public ResponseEntity<?> create(@RequestBody EstadoOrden estadoOrden) {
        return ResponseEntity.status(HttpStatus.CREATED).body(estadoOrdenService.save(estadoOrden));
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> update(@PathVariable int id, @RequestBody EstadoOrden estadoOrden) {
        Optional<EstadoOrden> updateProduct = estadoOrdenService.update(id, estadoOrden);
        return updateProduct.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable int id) {
        Optional<EstadoOrden> productoDelete =estadoOrdenService.delete(id);
        return productoDelete.map(c -> ResponseEntity.ok().build()).orElseGet(() -> ResponseEntity.notFound().build());
    }
}
