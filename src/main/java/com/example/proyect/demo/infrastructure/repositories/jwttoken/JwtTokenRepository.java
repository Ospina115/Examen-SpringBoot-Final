package com.example.proyect.demo.infrastructure.repositories.jwttoken;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.proyect.demo.domain.entities.security.JwtToken;


public interface JwtTokenRepository extends JpaRepository<JwtToken,Long> {
    Optional<JwtToken> findByToken(String jwt);
}