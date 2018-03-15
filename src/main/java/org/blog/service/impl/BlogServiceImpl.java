package org.blog.service.impl;

import java.util.List;

import org.blog.dao.ArticleDao;
import org.blog.dao.UserDao;
import org.blog.entity.Article;
import org.blog.entity.User;
import org.blog.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl implements BlogService {

	// 日志对象
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserDao userDao;

	@Autowired
	private ArticleDao articleDao;

	@Override
	public User login(long userId, long password) {
		User user = userDao.queryById(userId);
		if (user == null || password != user.getPassword()) {
			user = null;
		}
		return user;
	}

	@Override
	public int register(long userId, long password, String name) {
		return userDao.insertUser(userId, password, name);
	}

	@Override
	public User updatePassword(long userId, long password) {
		if (userDao.updatePassword(userId, password) != 1) {
			return null;
		} else {
			return userDao.queryById(userId);
		}
	}

	@Override
	public List<Article> getArticleList(int offset, int limit) {
		return articleDao.queryAll(offset, limit);
	}

	@Override
	public List<Article> getArticlesByUserId(long userId) {
		return articleDao.queryByUserId(userId);
	}

	@Override
	public Article getArticleByArticleId(long articleId) {
		return articleDao.queryByArticleId(articleId);
	}

	@Override
	public Article postBlog(long userId, String title, String text) {
		articleDao.insertArticle(userId, title, text);
		List<Article> articles = articleDao.queryAll(0, 1);
		return articles.get(0);
	}

	@Override
	public Article updateBlog(long articleId, String title, String text) {
		if (articleDao.updateArticle(articleId, title, text) != 1) {
			return null;
		} else {
			return articleDao.queryByArticleId(articleId);
		}
	}

	@Override
	public int deleteBlog(long articleId) {
		return articleDao.deleteArticle(articleId);
	}

	@Override
	public User getUserByUserId(long userId) {
		return userDao.queryById(userId);
	}

}
