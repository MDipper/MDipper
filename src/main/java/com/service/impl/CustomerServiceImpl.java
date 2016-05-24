package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.kisso.common.encrypt.SaltEncoder;
import com.mapper.CustomerMapper;
import com.mapper.UserMapper;
import com.model.Customer;
import com.model.User;
import com.service.CustomerService;
import com.service.UserService;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	public CustomerMapper customerMapper;

	public long addCustomer(Customer customer){
		return customerMapper.addCustomer(customer);
	}

	public void deleteCustomer(long id){
		customerMapper.deleteCustomer(id);
	}

	public void updateCustomer(Customer customer){
		customerMapper.updateCustomer(customer);
	}

	public List<Customer> findAllCustomer(){
		return customerMapper.findAllCustomer();
	}
}
