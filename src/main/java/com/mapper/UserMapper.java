package com.mapper;

import java.util.List;

import com.model.User;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
public interface UserMapper {
	int addUser(User user);

	List<User> getUserInfoByName(User user);

	User checkUserByUsername(String username);

	User checkUsernamePassword(User user);

	List<User> findAllUser();
}
