package com.poly.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.boot.autoconfigure.data.cassandra.CassandraDataAutoConfiguration;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Orders")
public class Order implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "create_date", nullable = false)
	private Timestamp createDate;

	private String address;
	private String nguoinhan;
	private Double tongtien;

	@ManyToOne
	@JoinColumn(name = "username")
	private Account account;
	@OneToMany(mappedBy = "order")
	List<OrderDetail> orderDetails;
}
