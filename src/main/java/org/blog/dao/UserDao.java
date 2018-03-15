package org.blog.dao;

import org.apache.ibatis.annotations.Param;
import org.blog.entity.User;

public interface UserDao {

	User queryById(long userId);

	int updatePassword(@Param("userId") long userId, @Param("password") long password);

	int insertUser(@Param("userId") long userId, @Param("password") long password, @Param("name") String name);

}
