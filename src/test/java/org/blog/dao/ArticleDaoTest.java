package org.blog.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.blog.entity.Article;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml" })
public class ArticleDaoTest {

	@Resource
	private ArticleDao articleDao;

	@Test
	public void Test() {
		String a = "Problems look mighty small from 150 miles up";
		System.out.println(a.length());
	}

	@Test
	public void testQueryByUserId() {
		List<Article> list = articleDao.queryByUserId(123789L);
		System.out.println(list);
	}

	@Test
	public void testQueryByArticleId() {
		Article i = articleDao.queryByArticleId(2L);
		System.out.println(i);
	}

	@Test
	public void testQueryAll() {
		List<Article> list = articleDao.queryAll(0, 4);
		System.out.println(list);
	}

	@Test
	public void testInsertArticle() {
		int i = articleDao.insertArticle(123789L, "BootStrap", "	Bootstrap，来自 Twitter，是目前很受欢迎的前端框架。Bootstrap 是基于 HTML、CSS、JavaScript 的，它简洁灵活，使得 Web 开发更加快捷。 它由Twitter的设计师Mark Otto和Jacob Thornton合作开发，是一个CSS/HTML框架。Bootstrap提供了优雅的HTML和CSS规范，它即是由动态CSS语言Less写成。Bootstrap一经推出后颇受欢迎，一直是GitHub上的热门开源项目，包括NASA的MSNBC（微软全国广播公司）的Breaking News都使用了该项目。 国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行性能优化而来。");
		System.out.println("insert: " + i);
	}

	@Test
	public void testDeleteArticle() {
		int i = articleDao.deleteArticle(4L);
		System.out.println("delete: " + i);
	}

	@Test
	public void testUpdateArticle() {
		int i = articleDao.updateArticle(2L, "标题", "正文");
		System.out.println(i);
	}

}
