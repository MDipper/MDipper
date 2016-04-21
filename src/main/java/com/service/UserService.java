package com.service;

import java.util.List;

import com.model.User;

public interface UserService {
	
	int addUser(User user);
	User checkUserByUsername(String username);
	User checkUsernamePassword(User user);
	List<User> findAllUser();
}
