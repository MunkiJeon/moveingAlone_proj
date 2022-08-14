package com.map.model;

import java.util.Date;

public class PurchaseDTO {
    int puridx;
    String purnum;
    String puruserid;
    String purproname;
    String purprice;
    Date purindate;
	public int getPuridx() {
		return puridx;
	}
	public void setPuridx(int puridx) {
		this.puridx = puridx;
	}
	public String getPurnum() {
		return purnum;
	}
	public void setPurnum(String purnum) {
		this.purnum = purnum;
	}
	public String getPuruserid() {
		return puruserid;
	}
	public void setPuruserid(String puruserid) {
		this.puruserid = puruserid;
	}
	public String getPurproname() {
		return purproname;
	}
	public void setPurproname(String purproname) {
		this.purproname = purproname;
	}
	public String getPurprice() {
		return purprice;
	}
	public void setPurprice(String purprice) {
		this.purprice = purprice;
	}
	public Date getPurindate() {
		return purindate;
	}
	public void setPurindate(Date purindate) {
		this.purindate = purindate;
	}
    
}
