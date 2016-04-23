package com.service;

import java.util.List;

import com.model.User;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
public interface UserService {

	int addUser(User user);

	User checkUserByUsername(String username);

	User checkUsernamePassword(User user);

	List<User> findAllUser();

	long validUserAndPassword(User user);
}
