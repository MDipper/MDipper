package com.mapper;

import java.util.List;

import com.model.News;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public interface NewsMapper {

	int addNews(News news);
	void updateNews(News news);
	News selectNewsByid(long newsid);
	
	List<News> findAllNews();
}
