package com.yumben.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Source implements Serializable{
	
	private Integer id;
	private String name;
	private List<Source> children=new ArrayList<Source>();
	private Source parent;
	private Boolean isParent;
	private Integer pId;
	private String path;
	private Boolean open;
	private Integer documentType;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Source> getChildren() {
		return children;
	}
	public void setChildren(List<Source> children) {
		this.children = children;
	}
	public Source getParent() {
		return parent;
	}
	public void setParent(Source parent) {
		this.parent = parent;
	}
	public Boolean getIsParent() {
		return isParent;
	}
	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}
	public Integer getpId() {
		return pId;
	}
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Boolean getOpen() {
		return open;
	}
	public void setOpen(Boolean open) {
		this.open = open;
	}
	public Integer getDocumentType() {
		return documentType;
	}
	public void setDocumentType(Integer documentType) {
		this.documentType = documentType;
	}
	

}
