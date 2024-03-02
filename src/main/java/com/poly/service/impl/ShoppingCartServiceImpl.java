package com.poly.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.model.CartItem;
import com.poly.service.ShoppingCartService;



@Service
@SessionScope
public class ShoppingCartServiceImpl implements ShoppingCartService {
	private Map<Integer, CartItem> map = new HashMap<Integer, CartItem>();
	
	@Override
	public void add(CartItem item) {
		CartItem existedItem = map.get(item.getProductId());
		if(existedItem != null) {
			existedItem.setQuantity(item.getQuantity() + existedItem.getQuantity());
		}else {
			map.put(item.getProductId(), item);
		}
		
	}
	
	@Override
	public void remove(int productId) {
		map.remove(productId);
	}
	
	@Override
	public Collection<CartItem> getCartItems(){
		return map.values();
	}
	
	@Override
	public void clear() {
		map.clear();
	}
	
	@Override
	public void update(int productId, int quantity) {
		CartItem item = map.get(productId);
		item.setQuantity(quantity);
		if(item.getQuantity()<=0) {
			map.remove(item.getProductId());
		}
	}
	
	@Override
	public double getAmount() {
		double amount = 0;
		for (CartItem item : map.values()) {
			amount += item.getPrice() * item.getQuantity();
		}
		return amount;
	}
	
	@Override
	public int getCount() {
		if(map.isEmpty()) {
			return 0;
		}else {
			int count = 0;
			for (CartItem item : map.values()) {
				count += item.getQuantity();
			}
			return count;
		}
		
	}
	
	
	
}
