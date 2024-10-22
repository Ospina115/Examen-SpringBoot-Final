package com.example.proyect.demo.domain.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;


@Entity
@Table(name = "persona_insumo")
@Data
public class PersonaInsumo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    
    @ManyToOne
    @JoinColumn(name = "idInsumo")
    private Insumo insumo;

    @ManyToOne
    @JoinColumn(name = "numDoc")
    private Persona persona;
    
    @ManyToOne
    @JoinColumn(name = "idServicio")
    private Servicio servicio;
}
