package com.mapper;

import java.util.List;

import com.model.Customer;

public interface CustomerMapper {

	long addCustomer(Customer customer);
	
	void deleteCustomer(long id);

	void updateCustomer(Customer customer);
	
	List<Customer> findAllCustomer();
}
