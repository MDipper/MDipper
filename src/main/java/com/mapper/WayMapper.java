package com.mapper;

import java.util.List;

import com.model.Way;

/**
 * @author xiezhipeng
 * @Date 2016-5-6
 */
public interface WayMapper {
	/*
	 * 添加联系方式
	 */
//	int addWay(Way way);
	/*
	 * 更新联系方式
	 */
	void updateWay(Way way);
	/*
	 * 查询联系方式
	 */
	Way findWay();
}
