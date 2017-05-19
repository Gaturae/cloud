package com.gbat.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gbat.dao.UserMapDAO;
import com.gbat.entity.UserMapper;
import com.gbat.pojo.User;

@Service
public class UserMapperImpl implements UserMapDAO{

	@Resource
	private UserMapper userDAO;
	
	@Override
	public List<User> find(String tableName) {
		// TODO Auto-generated method stub
		List<User> list = userDAO.queryForTableName(tableName);
		return list;
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		userDAO.insertUser(user);
		
	}

	@Override
	public void del(String username) {
		// TODO Auto-generated method stub
		userDAO.deleteByUsername(username);
		
	}

	@Override
	public User findByname(String username) {
		// TODO Auto-generated method stub
		User user = new User();
		user = userDAO.getByname(username);
		return user;
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDAO.updateUser(user);
		
	}
	
}
