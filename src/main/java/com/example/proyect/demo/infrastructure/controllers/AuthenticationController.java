package com.example.proyect.demo.infrastructure.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.proyect.demo.application.services.auth.AuthenticationService;
import com.example.proyect.demo.domain.dto.auth.AuthenticationRequest;
import com.example.proyect.demo.domain.dto.auth.AuthenticationResponse;
import com.example.proyect.demo.domain.dto.auth.LogoutResponse;
import com.example.proyect.demo.domain.entities.security.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@CrossOrigin(origins = "http://127.0.0.1:5500")
@RestController
@RequestMapping("/auth")
public class AuthenticationController {

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/validate-token")
    public ResponseEntity<Boolean> validate(@RequestParam String jwt){
        boolean isTokenValid = authenticationService.validateToken(jwt);
        return ResponseEntity.ok(isTokenValid);
    }
    
    @PostMapping("/authenticate")
    public ResponseEntity<AuthenticationResponse> authenticate(
            @RequestBody @Valid AuthenticationRequest authenticationRequest){

        AuthenticationResponse rsp = authenticationService.login(authenticationRequest);
        return ResponseEntity.ok(rsp);

    }

    @PostMapping("/logout")
    public ResponseEntity<LogoutResponse> logout(HttpServletRequest request){
        authenticationService.logout(request);
        return ResponseEntity.ok(new LogoutResponse("La sesión se cerro exitosamente"));
    }
    
    @GetMapping("/profile")
    public ResponseEntity<User> findMyProfile(){
        User user = authenticationService.findLoggedInUser();
        return ResponseEntity.ok(user);
    }
}
