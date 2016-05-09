package com.mapper;

import java.util.List;

import com.model.News;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public interface NewsMapper {
	/*
	 * 添加新闻
	 */
	int addNews(News news);
	/*
	 * 更新新闻
	 */
	void updateNews(News news);
	/*
	 * 根据id选择新闻
	 */
	News selectNewsByid(long newsid);
	/*
	 * 查询所有新闻
	 */
	List<News> findAllNews();
}
