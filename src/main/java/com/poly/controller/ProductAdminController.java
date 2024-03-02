//package com.poly.controller;
//
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.poly.dao.CategoryDAO;
//import com.poly.dao.ProductDAO;
//import com.poly.entity.Account;
//import com.poly.entity.Category;
//import com.poly.entity.Product;
//import com.poly.service.SessionService;
//
//@Controller
//public class ProductAdminController {
//	
//	
//	@Autowired
//	ProductDAO proDAO;
//	
//	@Autowired
//	CategoryDAO cateDAO;
//	@Autowired
//	SessionService sessionService;
//	
//	@RequestMapping("/productAdmin")
//	public String index(Model model, Product item ) {
//		Account user = sessionService.getAttribute("user");
//		if(!user.getAdmin()) {			
//			String error="Khong du quyen truy cap ";
//			return "redirect:/login.html?error="+error;
//		}
//		model.addAttribute("item", item);
//		model.addAttribute("categories", cateDAO.findAll());
//		model.addAttribute("productItems", proDAO.findAll());
//		return "productAdmin";
//	}
//	
//	@RequestMapping("/productAdmin/create")
//	public String create(@ModelAttribute("item") Product item) {
//	  proDAO.save(item);
//	  return "redirect:/productAdmin";
//	}
//
//	
//	@RequestMapping("/admin/productAdmin/update")
//	public String update( Product item) {
//		proDAO.save(item);
//		return "admin/productAdmin";
//	}
//	
//	 @RequestMapping("/productAdmin/delete/{id}")
//	    public String delete(@PathVariable("id") Integer id){
//	        proDAO.deleteById(id);
//	        return "redirect:/categoryAdmin";
//	    }
//	 @RequestMapping("/productAdmin/edit/{id}")
//	 public String edit(Model model ,@PathVariable("id") Integer id) {
//		 Product item = proDAO.findById(id).get();
//		 model.addAttribute("item", item);
//		 List<Product> items = proDAO.findAll();
//		 model.addAttribute("productItems", items);
//		 return "productAdmin";
//	 }
//}
