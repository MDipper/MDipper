package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.NewsMapper;
import com.model.News;
import com.service.NewsService;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
@Service
@Transactional
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsMapper newsMapper;

	/**
	 * 添加新闻
	 * @param news   新闻
	 * @return 新闻id
	 */
	public int addNews(News news){
		return newsMapper.addNews(news);
	}
	public News selectNewsByid(long newsid){
		return newsMapper.selectNewsByid(newsid);
	}
	public List<News> findAllNews(){
		return newsMapper.findAllNews();
	}

}
