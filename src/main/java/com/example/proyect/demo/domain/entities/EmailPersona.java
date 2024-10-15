package com.example.proyect.demo.domain.entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "email_per")
public class EmailPersona {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(length = 100)
    private  String email;

    @ManyToOne
    @JoinColumn(name = "nro_doc")
    private Persona persona;

    // @OneToMany(mappedBy = "persona")
    // @JsonIgnore
    // private List<Persona> personas;
}
