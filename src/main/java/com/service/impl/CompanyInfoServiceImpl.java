package com.service.impl;

import java.util.List;

import com.mapper.CompanyInfoMapper;
import com.model.CompanyInfo;

public class CompanyInfoServiceImpl {
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
	public List<CompanyInfo> findCompanyInfo(){
		return companyInfoMapper.findCompanyInfo();
	}
}
