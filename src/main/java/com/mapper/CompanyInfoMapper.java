package com.mapper;


import com.model.CompanyInfo;

public interface CompanyInfoMapper {
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
