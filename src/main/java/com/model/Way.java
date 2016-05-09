package com.model;
/**
 * @author xiezhipeng
 * @Date 2016-5-6
 */
public class Way {
	private Long wayid;
	private String	address;
	private String zipcode;
	private String linkman;
	private String phone;
	private String email;
	public Long getWayid() {
		return wayid;
	}
	public void setWayid(long i) {
		this.wayid = i;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


}
