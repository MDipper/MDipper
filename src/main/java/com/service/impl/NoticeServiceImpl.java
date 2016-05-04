package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.NewsMapper;
import com.mapper.NoticeMapper;
import com.model.News;
import com.model.Notice;
import com.service.NewsService;
import com.service.NoticeService;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper noticeMapper;

	public int addNotice(Notice notice){
		return noticeMapper.addNotice(notice);
	}
	public void  updateNotice(Notice notice){
		noticeMapper.updateNotice(notice);
	}
	public 	Notice findNotice(){
		return noticeMapper.findNotice();
	}
}
