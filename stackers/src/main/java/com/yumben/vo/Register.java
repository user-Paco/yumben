package com.yumben.vo;

public class Register {

	private  String mobile;
	private  String textCode;
	private  String again_password;
	private  String password;
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getTextCode() {
		return textCode;
	}
	public void setTextCode(String textCode) {
		this.textCode = textCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAgain_password() {
		return again_password;
	}
	public void setAgain_password(String again_password) {
		this.again_password = again_password;
	}
	@Override
	public String toString() {
		return "Register [mobile=" + mobile + ", textCode=" + textCode + ", again_password=" + again_password
				+ ", password=" + password + "]";
	}
	
	
	
	
}
