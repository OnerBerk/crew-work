package com.onair.crewwork.model.User;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.onair.crewwork.model.BaseEntityWithAudit;
import jakarta.persistence.*;
import lombok.Data;

import java.util.LinkedHashSet;
import java.util.Set;

@Data
@Entity
@Table(name = "crew_user")
public class CrewUser extends BaseEntityWithAudit {
    private String fName;
    private String lName;
    private String email;
    @JsonIgnore
    private String password;
    private String resetPasswordToken;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    protected Set<Role> roles = new LinkedHashSet<>();
}
