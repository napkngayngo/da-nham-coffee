package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Order;
import com.poly.entity.Product;

public interface OrderDAO extends JpaRepository<Order, Long> {
	@Query(value = "select year(create_date)" + 
					" from orders "+
					" group by year(create_date)",
		nativeQuery = true)
	
    List<Integer> findByYear();
	
	@Query(value = "select MONTH(o.create_date), SUM(o.tongtien)" + 
			" from orders o" +
			" where YEAR(o.create_date) = ?1" +
			" group by MONTH(create_date)",
			nativeQuery = true)
	List<Object[]> findByDoanhThuNam(int year);
	
	@Query("SELECT o FROM Order o ORDER BY o.createDate DESC")
    List<Order> findAllOrderByCreateDateDesc();
	
}
