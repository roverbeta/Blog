package org.blog.service;

import java.util.List;

import org.blog.entity.Article;
import org.blog.entity.User;

public interface BlogService {

	User login(long userId, long password);

	User getUserByUserId(long userId);
	
	int register(long userId, long password, String name);

	User updatePassword(long userId, long password);

	List<Article> getArticleList(int offset, int limit);

	List<Article> getArticlesByUserId(long userId);

	Article getArticleByArticleId(long articleId);

	Article postBlog(long userId, String title, String text);

	Article updateBlog(long articleId, String title, String text);

	int deleteBlog(long articleId);

}
