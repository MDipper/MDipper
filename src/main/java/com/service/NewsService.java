package com.service;

import java.util.List;

import com.model.News;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public interface NewsService {

	/**
	 * 添加新闻
	 * @param news   新闻
	 * @return 新闻id
	 */
	int addNews(News news);

	List<News> findAllNews();
}
