package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.kisso.common.encrypt.SaltEncoder;
import com.mapper.UserMapper;
import com.model.User;
import com.service.UserService;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	public UserMapper userMapper;

	public long addUser(User user) {
		long userid = userMapper.addUser(user);
		return userid;
	}

	public void deleteUser(long userid) {
		userMapper.deleteUser(userid);
	}
	
	public void deleteUser(List<?> userlist) {
		userMapper.deleteUserlist(userlist);
	}

	public void updateUser(User user) {
		userMapper.updateUser(user);
	}

	public boolean checkUserByUsername(String username) {
		return userMapper.checkUserByUsername(username) == 1;
	}

	public long validUserAndPassword(User user) {
		List<User> users = userMapper.getUserInfoByName(user);
		if (users.isEmpty()) {
			return -1;// 不存在
		}
		User info = users.get(0);
		if (SaltEncoder.md5SaltValid(user.getUsername(), info.getPassword(), user.getPassword())) {
			return info.getId();
		} else {
			return -1;// 不存在
		}
	}

	public List<User> findAllUser() {
		return userMapper.findAllUser();
	}
}
