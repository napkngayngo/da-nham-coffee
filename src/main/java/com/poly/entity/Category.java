package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import org.hibernate.validator.constraints.Length;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable{
	@Id
	@NotEmpty
	@Length(min = 0, max = 4)
	private String id;
	@NotEmpty
	private String name;
	
	@OneToMany(mappedBy = "category")
	private List<Product> products;
}
