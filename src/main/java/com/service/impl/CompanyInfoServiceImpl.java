package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.CompanyInfoMapper;
import com.model.CompanyInfo;
import com.service.CompanyInfoService;

@Service
@Transactional
public class CompanyInfoServiceImpl implements CompanyInfoService {
	@Autowired
	private CompanyInfoMapper companyInfoMapper;
	/*
	 * 添加公司信息
	 */
	//int addCompanyInfo(CompanyInfo companyInfo)
	/*
	 * 更新公司信息
	 */
	public void updateCompanyInfo(CompanyInfo companyInfo){
		companyInfoMapper.updateCompanyInfo(companyInfo);
	}
	/*
	 * 查找公司信息
	 */
	public CompanyInfo findCompanyInfo(){
		return companyInfoMapper.findCompanyInfo();
	}
}
