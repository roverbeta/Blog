package org.blog.dao;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.blog.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml" })
public class UserDaoTest {

	@Resource
	private UserDao userDao;
	
	@Test
	public void testQueryById() {
		User user = userDao.queryById(123789L);
		System.out.println(user);
	}

	@Test
	public void testUpdatePassword() {
		int i = userDao.updatePassword(123789L, 123L);
		System.out.println(i);
	}

	@Test
	public void testInsertUser() {
		int i = userDao.insertUser(2131L, 123789L, "xiaoming");
		System.out.println(i);
	}

}
