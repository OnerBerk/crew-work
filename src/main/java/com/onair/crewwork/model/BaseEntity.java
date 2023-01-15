package com.onair.crewwork.model;

import jakarta.persistence.*;
import jakarta.xml.bind.annotation.XmlTransient;
import lombok.Data;

@Data
@MappedSuperclass
public class BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @XmlTransient
    @Version
    protected Integer version;
}
