package com.gbat.entity;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gbat.pojo.User;


public interface UserMapper {

	public List<User> queryForTableName(@Param("tableName") String tableName);
	public void insertUser(User user);
	public void deleteByUsername(String username);
	public User getByname(String username);
	public void updateUser(User user);
}
