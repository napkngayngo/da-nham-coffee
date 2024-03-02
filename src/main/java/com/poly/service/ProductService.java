package com.poly.service;

import java.util.ArrayList;
import java.util.List;

import com.poly.model.Product;



public interface ProductService {

	List<Product> findAll();

	void update(Product product);

	void remove(int productId);

	void add(Product product);

	Product findById(int productId);

	List<Product> findBrand(String brand);
	
}
