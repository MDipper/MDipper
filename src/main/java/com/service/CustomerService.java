package com.service;

import java.util.List;

import com.model.Customer;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
public interface CustomerService {
	long addCustomer(Customer customer);

	void deleteCustomer(long id);

	void updateCustomer(Customer customer);

	List<Customer> findAllCustomer();
}
