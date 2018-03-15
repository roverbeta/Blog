package org.blog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.blog.entity.Article;

public interface ArticleDao {

	List<Article> queryByUserId(long userId);
	
	Article queryByArticleId(long articleId);
	
	List<Article> queryAll(@Param("offset") int offset, @Param("limit") int limit);
	
	int insertArticle(@Param("userId") long userId,@Param("title") String title ,@Param("text") String text);
	
	int deleteArticle(long articleId);
	
	int updateArticle(@Param("articleId") long articleId,@Param("title") String title ,@Param("text") String text);
}
