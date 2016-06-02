package com.mapper;

import java.util.List;
import java.util.Map;

import com.model.Customer;

public interface CustomerMapper {

	long addCustomer(Customer customer);

	void deleteCustomer(long id);

	void updateCustomer(Customer customer);

	List<Customer> findAllCustomer();

	List<Map<String, Integer>> countByNature();

	List<Map<String, Integer>> countByIndustry();

	List<Map<String, Integer>> countBySize();

}
