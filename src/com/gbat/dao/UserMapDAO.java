package com.gbat.dao;

import java.util.List;

import com.gbat.pojo.User;


public interface UserMapDAO {
	
	
	public List<User> find(String tableName);
	public void add(User user);
	public void del(String username);
	public User findByname(String username);
	public void update(User user);

}
