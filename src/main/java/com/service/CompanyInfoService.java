package com.service;


import com.model.CompanyInfo;

public interface CompanyInfoService {
	/*
	 * 添加公司信息
	 */
	//int addCompanyInfo(CompanyInfo companyInfo);
	/*
	 * 更新公司信息
	 */
	void updateCompanyInfo(CompanyInfo companyInfo);
	/*
	 * 查找公司信息
	 */
	CompanyInfo findCompanyInfo();
}
