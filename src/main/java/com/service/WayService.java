package com.service;


import com.model.Way;

/**
 * @author xiezhipeng
 * @Date 2016-5-3
 */
public interface WayService {

	/*
	 * 添加联系方式
	 */
	//int addWay(Way way);
	/*
	 * 更新联系方式
	 */
	void updateWay(Way way);
	/*
	 * 查询联系方式
	 */
	Way findWay();
}
