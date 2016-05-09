package com.mapper;


import java.util.List;

import com.model.Notice;
/**
 * @author xiezhipeng
 * @Date 2016-5-3
 */
public interface NoticeMapper {
	/*
	 * 	添加系统公告
	 */
	//int addNotice(Notice notice);
	/*
	 * 更新系统公告
	 */
	void  updateNotice(Notice notice);
	/*
	 * 查询系统公告
	 */
	Notice findNotice();
}
