package com.poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.model.Product;
import com.poly.service.ProductService;

@Service
@SessionScope
public class ProductServiceImpl implements ProductService {
	private static List<Product> list = new ArrayList<>();
	static {
		list.add(new Product(1, "MLB", "MLB Chunky Liner Mid Denim Boston Red", 10, 60, "m1.webp"));
		list.add(new Product(2, "MLB", "MLB BigBall Chunky A Gradient Classic ", 43, 98, "m2.webp"));
		list.add(new Product(3, "MLB", "MLB Bigball Chunky A New York Yankees", 20, 70, "m3.webp"));
		list.add(new Product(4, "MLB", "MLB BigBall Chunky A LA Dodgers Off-White", 30, 80, "m4.webp"));
		list.add(new Product(5, "Adidas", "Adidas Stan Smith", 40, 90, "a1.webp"));
		list.add(new Product(6, "Adidas", "Adidas Superstar", 50, 100, "a2.webp"));
		list.add(new Product(7, "MLB", "MLB BigBall Chunky Cube Monogram New", 60, 110, "m7.webp"));
		list.add(new Product(8, "MLB", "MLB Chunky-Liner High Boston Red Sox Wine", 70, 120, "m8.webp"));
		list.add(new Product(9, "MLB", "MLB Mule Playball Origin New York Yankees", 80, 130, "m9.webp"));
		list.add(new Product(10, "Adidas", "Adidas Ultraboost", 30, 80, "a3.webp"));
		list.add(new Product(11, "Adidas", "Adidas NMD", 40, 90, "a4.webp"));
		list.add(new Product(12, "Adidas", "Adidas Gazelle", 50, 100, "a5.webp"));
		list.add(new Product(13, "Adidas", "Adidas Yeezy", 60, 110, "a6.webp"));
		list.add(new Product(14, "Adidas", "Adidas Continental 80", 70, 120, "a7.webp"));
		list.add(new Product(15, "Adidas", "Adidas Campus", 80, 130, "a8.webp"));
		list.add(new Product(16, "Nike", "Nike Air Force 1", 30, 80, "n1.webp"));
		list.add(new Product(17, "Nike", "Nike Air Max 90", 40, 90, "n2.webp"));
		list.add(new Product(18, "Nike", "Nike Air Jordan 1", 50, 100, "n3.webp"));
		list.add(new Product(19, "Nike", "Nike React Element 55", 60, 110, "n4.webp"));
		list.add(new Product(20, "Nike", "Nike Dunk Low", 70, 120, "n5.webp"));
		list.add(new Product(21, "Nike", "Nike Cortez", 80, 130, "n6.webp"));
		list.add(new Product(22, "Nike", "Nike Air Max 270", 90, 140, "n7.webp"));
		list.add(new Product(23, "Nike", "Nike Zoom Pegasus 37", 100, 150, "n8.webp"));
		list.add(new Product(24, "Nike", "Nike Blazer Mid", 110, 160, "n9.webp"));
		list.add(new Product(25, "Nike", "Nike SB Dunk High", 120, 170, "n10.webp"));

	}

	@Override
	public void add(Product product) {
		list.add(product);
	}

	@Override
	public void remove(int productId) {
		for (Product product : list) {
			if (product.getProductId() == productId) {
				list.remove(product);
			}
		}
	}

	@Override
	public void update(Product product) {
		for (int i = 0; i < list.size(); i++) {
			Product item = list.get(i);
			if (item.getProductId() == product.getProductId()) {
				list.set(0, item);
				break;
			}
		}
	}

	@Override
	public List<Product> findAll() {
		return list;
	}

	@Override
	public List<Product> findBrand(String brand) {
		List<Product> listBrand = new ArrayList<>();
		for (Product product : list) {
			if (product.getBrand().equals(brand)) {
				listBrand.add(product);
			}
		}
		return listBrand;
	}

	@Override
	public Product findById(int productId) {
		return list.get(productId - 1);
	}

}
