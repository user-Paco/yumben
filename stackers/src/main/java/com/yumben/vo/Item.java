package com.yumben.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Item implements Serializable{
	
	private String id;
	private String text;
	private String href;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	

}
