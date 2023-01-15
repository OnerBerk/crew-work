package com.onair.crewwork.model.User;

import com.onair.crewwork.model.BaseEntityWithAudit;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "permission")
public class Permission extends BaseEntityWithAudit {
    @Enumerated(EnumType.STRING)
    private RolePermissionType name;

}
