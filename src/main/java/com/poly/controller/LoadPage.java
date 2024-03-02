package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.ProductDAO;
import com.poly.dao.ShoppingCartDAO;
import com.poly.entity.Product;
import com.poly.service.ProductService;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoadPage {
	@Autowired
	private ProductService productService;
	@Autowired
	HttpServletRequest request;
	@Autowired
	private ShoppingCartDAO shoppingCartDAO;
	@Autowired
	SessionService sessionService;
	@Autowired
	ProductDAO productDAO;

	@GetMapping({  "/contact.html", "/about.html", "/profile.html" })
	public String loadPage(HttpServletRequest request) {
		String path = request.getServletPath();

//		if (path.equals("/")) {
//			sessionService.setAttribute("cartQuantity", shoppingCartDAO.getCount());
//			return "index";
//		}
		if ("/index.html".equals(path)) {
			return "index";
		}
		
		else if ("/contact.html".equals(path)) {
			return "contact";

		} else if ("/about.html".equals(path)) {
			return "about";
		}
		else if ("/profile.html".equals(path)) {
			return "profile";
		}
		
		// Trang không hợp lệ
		return "error";
	}
	
	@RequestMapping({"/","index.html"})
	public String index() {
		sessionService.setAttribute("cartQuantity", shoppingCartDAO.getCount());
		return "index";
	}
	

	

	

}
