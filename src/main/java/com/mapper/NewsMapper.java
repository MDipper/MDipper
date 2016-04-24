package com.mapper;

import java.util.List;

import com.model.News;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public interface NewsMapper {
	/**
	 * 添加新闻
	 * @param news   新闻
	 * @return 新闻id
	 */
	int addNews(News news);

	List<News> findAllNews();
}
