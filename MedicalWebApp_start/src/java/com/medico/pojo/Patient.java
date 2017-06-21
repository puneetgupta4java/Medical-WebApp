/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medico.pojo;

/**
 *
 * @author puneet gupta
 */
public class Patient {
 
    private int Patient_id;
    private String name;
    private String Password;
    private String gender;
    private String email;

    public int getPatient_id() {
        return Patient_id;
    }

    public void setPatient_id(int Patient_id) {
        this.Patient_id = Patient_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
