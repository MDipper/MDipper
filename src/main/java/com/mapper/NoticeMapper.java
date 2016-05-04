package com.mapper;


import java.util.List;

import com.model.Notice;
/**
 * @author xiezhipeng
 * @Date 2016-5-3
 */
public interface NoticeMapper {
	int addNotice(Notice notice);
	void  updateNotice(Notice notice);
	List<Notice> findNotice();
}
