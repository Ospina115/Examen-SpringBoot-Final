package com.example.proyect.demo.domain.dto;

import java.io.Serializable;

import jakarta.validation.constraints.Size;

public class UserDto implements Serializable {

    @Size(min = 4)
    private String name;
    private String username;
    @Size(min = 8)
    private String password;
    @Size(min = 8)
    private String repeatedPassword;

    private int personaNumDoc;
    
    public int getPersonaNumDoc() {
        return personaNumDoc;
    }
    public void setPersonaNumDoc(int personaNumDoc) {
        this.personaNumDoc = personaNumDoc;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getRepeatedPassword() {
        return repeatedPassword;
    }
    public void setRepeatedPassword(String repeatedPassword) {
        this.repeatedPassword = repeatedPassword;
    }
    
}