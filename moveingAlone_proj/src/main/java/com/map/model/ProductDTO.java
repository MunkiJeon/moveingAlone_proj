package com.map.model;

import java.sql.Date;

public class ProductDTO {
    int p_autonum;
    String p_code;
    String p_manuf;
    String p_name;
    String p_wname;
    int p_cot;
    String p_price;
    Date p_indate;
    String p_enddate;
    String p_text;
    String p_img;
    String p_infoimg;
	public int getP_autonum() {
		return p_autonum;
	}
	public void setP_autonum(int p_autonum) {
		this.p_autonum = p_autonum;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_manuf() {
		return p_manuf;
	}
	public void setP_manuf(String p_manuf) {
		this.p_manuf = p_manuf;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_wname() {
		return p_wname;
	}
	public void setP_wname(String p_wname) {
		this.p_wname = p_wname;
	}
	public int getP_cot() {
		return p_cot;
	}
	public void setP_cot(int p_cot) {
		this.p_cot = p_cot;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public Date getP_indate() {
		return p_indate;
	}
	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}
	public String getP_enddate() {
		return p_enddate;
	}
	public void setP_enddate(String p_enddate) {
		this.p_enddate = p_enddate;
	}
	public String getP_text() {
		return p_text;
	}
	public void setP_text(String p_text) {
		this.p_text = p_text;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_infoimg() {
		return p_infoimg;
	}
	public void setP_infoimg(String p_infoimg) {
		this.p_infoimg = p_infoimg;
	}
    
}