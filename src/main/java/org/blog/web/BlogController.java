package org.blog.web;

import java.util.List;

import org.blog.entity.Article;
import org.blog.entity.User;
import org.blog.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogController {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BlogService blogService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Article> articles = blogService.getArticleList(0, 4);
		model.addAttribute("list", articles);
		model.addAttribute("pageId", 1);
		return "index";
	}

	@RequestMapping(value = "/{pageId}/posts", method = RequestMethod.GET)
	public String olderPosts(@PathVariable("pageId") Integer pageId, Model model) {
		int offset = 4 * pageId - 4;
		int limit = 4 * pageId;
		List<Article> articles = blogService.getArticleList(offset, limit);
		model.addAttribute("list", articles);
		model.addAttribute("pageId", pageId);
		return "index";
	}

	@RequestMapping(value = "/login")
	public String login(String userId, String password, Model model) {
		if (userId == null) {
			return "login";
		} else {
			try {
				Long userIdLong = Long.parseLong(userId.trim());
				Long passwordLong = Long.parseLong(password.trim());
				User user = blogService.login(userIdLong, passwordLong);
				model.addAttribute("user", user);
				List<Article> articles = blogService.getArticleList(0, 4);
				model.addAttribute("list", articles);
				model.addAttribute("state", 1);
				return "index";

			} catch (Exception e) {
				logger.error(e.getMessage().toString());
				return "login";
			}
		}
	}

	@RequestMapping(value = "/post")
	public String post(@CookieValue(value = "userId", required = false) String userId, String title, String text,
			Model model) {
		if (userId == null) {
			return "login";
		} else if (title == null) {
			return "post";
		} else {
			Long userIdLong = Long.parseLong(userId.trim());
			Article article = blogService.postBlog(userIdLong, title, text);
			model.addAttribute("article", article);
			return "article";
		}
	}

	@RequestMapping(value = "/{articleId}/article", method = RequestMethod.GET)
	public String article(@PathVariable("articleId") Long articleId, Model model) {
		if (articleId != null) {
			Article article = blogService.getArticleByArticleId(articleId);
			model.addAttribute("article", article);
		}
		return "article";
	}

	@RequestMapping(value = "/{articleId}/delete", method = RequestMethod.GET)
	public String deletePost(@CookieValue(value = "userId", required = false) String userId,
			@PathVariable("articleId") Long articleId, Model model) {
		if (userId == null) {
			return "login";
		} else {
			Long userIdLong = Long.parseLong(userId.trim());
			Article article = blogService.getArticleByArticleId(articleId);
			if (userIdLong == article.getUserId()) {
				blogService.deleteBlog(articleId);
				List<Article> articles = blogService.getArticleList(0, 4);
				model.addAttribute("list", articles);
				return "index";
			} else {
				return "login";
			}
		}
	}

	@RequestMapping(value = "/{articleId}/edit", method = RequestMethod.GET)
	public String editPost(@CookieValue(value = "userId", required = false) String userId,
			@PathVariable("articleId") Long articleId, Model model) {
		if (userId == null) {
			return "login";
		} else {
			Long userIdLong = Long.parseLong(userId.trim());
			Article article = blogService.getArticleByArticleId(articleId);
			if (userIdLong == article.getUserId()) {
				model.addAttribute("article", article);
				return "edit";
			} else {
				return "login";
			}
		}
	}

	@RequestMapping(value = "/{articleId}/update", method = RequestMethod.POST)
	public String update(String title, String text, @CookieValue(value = "userId", required = false) String userId,
			@PathVariable("articleId") Long articleId, Model model) {
		if (userId == null) {
			return "login";
		} else {
			Long userIdLong = Long.parseLong(userId.trim());
			Article article = blogService.getArticleByArticleId(articleId);
			if (userIdLong == article.getUserId()) {
				article = blogService.updateBlog(articleId, title, text);
				model.addAttribute("article", article);
				return "article";
			} else {
				return "login";
			}
		}
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}

	@RequestMapping(value = "/register")
	public String register(String userId, String password, String name, Model model) {
		if (userId == null) {
			return "register";
		} else {
			try {
				Long userIdLong = Long.parseLong(userId.trim());
				Long passwordLong = Long.parseLong(password.trim());
				int i = blogService.register(userIdLong, passwordLong, name.trim());
				if (i == 1) {
					User user = blogService.getUserByUserId(userIdLong);
					model.addAttribute("user", user);
					model.addAttribute("state", 1);
				}
				List<Article> articles = blogService.getArticleList(0, 4);
				model.addAttribute("list", articles);
				return "index";

			} catch (Exception e) {
				logger.error(e.getMessage().toString());
				return "register";
			}
		}
	}
}
