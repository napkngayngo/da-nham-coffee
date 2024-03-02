package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.OrderDAO;
import com.poly.entity.Account;
import com.poly.entity.Order;
import com.poly.entity.RevenueItem;
import com.poly.service.SessionService;

import jakarta.validation.Valid;

@Controller

public class AdminOrderController {
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	SessionService sessionService;
	
	

	@RequestMapping("/history")
	public String index(Model model, @ModelAttribute("orderItem") Order order) {
		Account user = sessionService.getAttribute("user");
		if(!user.getAdmin()) {			
			String error="Khong du quyen truy cap ";
			return "redirect:/login.html?error="+error;
		}
		
//		model.addAttribute("orderItems", orderDAO.findAll());
		model.addAttribute("orderItems", orderDAO.findAllOrderByCreateDateDesc());
		
		return "orderAdmin";
	}
	

	

}
