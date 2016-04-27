package com.model;

import java.sql.Date;

/**
 * @author xiezhipeng
 * @Date 2016-4-24
 */
public class News {

	/** 主键ID */
	private Long newsid;
	/** 新闻日期 */
	private Date newsdate;
	/** 新闻标题 */
	private String newstitle;
	/** 新闻简介 */
	private String newsabstract;
	/** 新闻内容 */
	private String newstext;

	public Long getNewsid() {
		return newsid;
	}

	public void setNewsid(Long newsid) {
		this.newsid = newsid;
	}

	public Date getNewsdate() {
		return newsdate;
	}

	public void setNewsdate(Date newsdate) {
		this.newsdate = newsdate;
	}

	public String getNewstitle() {
		return newstitle;
	}

	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}

	public String getNewsabstract() {
		return newsabstract;
	}

	public void setNewsabstract(String newsabstract) {
		this.newsabstract = newsabstract;
	}

	public String getNewstext() {
		return newstext;
	}

	public void setNewstext(String newstext) {
		this.newstext = newstext;
	}
}
