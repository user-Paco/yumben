package com.yumben.vo;




/**
 * 商品
 * @author Administrator
 *
 */
public class Records {
	
	//商品名字
	private  String couponName;
	//交付方式
	private  String deliveryMode;
	//商品详情
	private  String elaborate;
	//图片
	private  String goodsPicFileId;
	//结束时间
	private  String endTime;
	//商品金额
	private  String parPrice;
	//使用门店
	private  String summry;
	
	//积分
	private String integral;
	

	/**
	 * 
	 * @param couponName 商品名字
	 * @param deliveryMode 交付方式
	 * @param elaborate  商品详情
	 * @param goodsPicFileId  图片
	 * @param endTime 结束时间
	 * @param parPrice 商品金额
	 * @param summry 使用门店
	 */
	public Records(String couponName, String deliveryMode, String elaborate, String goodsPicFileId, String endTime,
			String parPrice, String summry,String integral) {
		super();
		this.couponName = couponName;
		this.deliveryMode = deliveryMode;
		this.elaborate = elaborate;
		this.goodsPicFileId = goodsPicFileId;
		this.endTime = endTime;
		this.parPrice = parPrice;
		this.summry = summry;
		this.integral=integral;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getDeliveryMode() {
		return deliveryMode;
	}
	public void setDeliveryMode(String deliveryMode) {
		this.deliveryMode = deliveryMode;
	}
	public String getElaborate() {
		return elaborate;
	}
	public void setElaborate(String elaborate) {
		this.elaborate = elaborate;
	}
	public String getGoodsPicFileId() {
		return goodsPicFileId;
	}
	public void setGoodsPicFileId(String goodsPicFileId) {
		this.goodsPicFileId = goodsPicFileId;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getParPrice() {
		return parPrice;
	}
	public void setParPrice(String parPrice) {
		this.parPrice = parPrice;
	}
	public String getSummry() {
		return summry;
	}
	public void setSummry(String summry) {
		this.summry = summry;
	}
	
	public String getIntegral() {
		return integral;
	}
	public void setIntegral(String integral) {
		this.integral = integral;
	}
	
	
}
