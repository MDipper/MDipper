package com.mapper;

import java.util.List;

import com.model.User;

public interface UserMapper {
	int addUser(User user);
	User checkUserByUsername(String username);
	User checkUsernamePassword(User user);
	List<User> findAllUser();
}
