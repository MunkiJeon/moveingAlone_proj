package com.map.model;

import java.util.Date;

public class BasketOpDTO {
	  String bo_num; 
	  String bo_name; 
	  int bo_count;
	  int bo_price;
	  Date bo_indate;
	public String getBo_num() {
		return bo_num;
	}
	public void setBo_num(String bo_num) {
		this.bo_num = bo_num;
	}
	public String getBo_name() {
		return bo_name;
	}
	public void setBo_name(String bo_name) {
		this.bo_name = bo_name;
	}
	public int getBo_count() {
		return bo_count;
	}
	public void setBo_count(int bo_count) {
		this.bo_count = bo_count;
	}
	public int getBo_price() {
		return bo_price;
	}
	public void setBo_price(int bo_price) {
		this.bo_price = bo_price;
	}
	public Date getBo_indate() {
		return bo_indate;
	}
	public void setBo_indate(Date bo_indate) {
		this.bo_indate = bo_indate;
	}
	  
}
