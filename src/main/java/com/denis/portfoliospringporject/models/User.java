package com.denis.portfoliospringporject.models;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

@Entity
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "First Name is required")
    @Size(min=3, max=30, message = "At least 3 characters")
    private String firstName;

    @NotBlank(message = "Last Name is required")
    @Size(min=3, max=30, message = "At least 3 characters")
    private String lastName;

    @NotBlank(message = "Email is required")
    @Size(min=5, message = "At least 5 characters")
    private String email;

    private double usd = 100000;

    @NotNull
    private String image = "/images/pfp.png";

    @NotBlank(message = "Password is required")
    @Size(min=5, message = "At least 5 characters")
    @Pattern(regexp="^(?=.*[A-Z])(?=.*\\d).*$", message="Password must contain at least one capital letter and two numbers")
    private String password;

    @Transient
    private String confirm;

    @Column(updatable=false)
    private Date createdAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }

    private Date lastLogin;

    @OneToMany(mappedBy = "user",fetch = FetchType.LAZY)
    private List<Transaction> transactions;


    public User() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public List<Transaction> getTransactions() {
        return transactions;
    }

    public void setTransactions(List<Transaction> transactions) {
        this.transactions = transactions;
    }

    public double getUsd() {
        return usd;
    }

    public void setUsd(double usd) {
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        this.usd = Double.parseDouble(decimalFormat.format(usd));
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}