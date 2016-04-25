package com.service;

import java.util.List;

import com.model.News;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public interface NewsService {

	int addNews(News news);

	News selectNewsByid(long newsid);
	
	List<News> findAllNews();
}
