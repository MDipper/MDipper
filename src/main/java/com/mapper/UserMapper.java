package com.mapper;

import java.util.List;

import com.model.User;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
public interface UserMapper {
	/**
	 * 添加用户
	 * 
	 * @param user
	 *            用户
	 * @return 修改的行数
	 */
	long addUser(User user);

	void deleteUser(long userid);
	
	void deleteUserlist(List<?> userlist);

	void updateUser(User user);

	/**
	 * 查询用户是否存在
	 * 
	 * @param username
	 *            用户名
	 * @return
	 */
	long checkUserByUsername(String username);

	/**
	 * 根据用户名返回用户信息
	 * 
	 * @param user
	 *            用户名
	 * @return 用户信息
	 */
	List<User> getUserInfoByName(User user);

	/**
	 * 查询所有用户的信息
	 * 
	 * @return 用户信息的表
	 */
	List<User> findAllUser();
}
