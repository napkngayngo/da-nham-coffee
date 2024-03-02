package com.poly.service;

import java.util.Collection;

import com.poly.model.CartItem;



public interface ShoppingCartService {

	int getCount();

	double getAmount();

	void update(int productId, int quatity);

	void clear();

	Collection<CartItem> getCartItems();

	void remove(int productId);

	void add(CartItem item);

}
