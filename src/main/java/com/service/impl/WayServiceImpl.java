package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.WayMapper;
import com.model.Way;
import com.service.WayService;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
@Service
@Transactional
public class WayServiceImpl implements WayService {
	@Autowired
	private WayMapper wayMapper;

	/*
	 * 添加联系方式
	 */
/*	public int addWay(Way way) {
		return wayMapper.addWay(way);
	}*/

	/*
	 * 更新联系方式
	 */
	public void updateWay(Way way) {
		wayMapper.updateWay(way);
	}

	/*
	 * 查询联系方式
	 */
	public Way findWay(){
		return wayMapper.findWay();
	}
}
