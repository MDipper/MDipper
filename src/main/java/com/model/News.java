package com.model;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public class News {

	/** 主键ID */
	private Long newsid;

	/** 新闻内容 */
	private String newstext;

	public Long getNewsid() {
		return newsid;
	}

	public void setNewsid(Long newsid) {
		this.newsid = newsid;
	}

	public String getNewstext() {
		return newstext;
	}

	public void setNewstext(String newstext) {
		this.newstext = newstext;
	}
}
