package com.map.model;

import java.util.Date;

public class PurchaseOpDTO {
    String puropnum;
    String puropname;
    String puropprice;
    Date puropindate;
    int puropcot;
	public String getPuropnum() {
		return puropnum;
	}
	public void setPuropnum(String puropnum) {
		this.puropnum = puropnum;
	}
	public String getPuropname() {
		return puropname;
	}
	public void setPuropname(String puropname) {
		this.puropname = puropname;
	}
	public String getPuropprice() {
		return puropprice;
	}
	public void setPuropprice(String puropprice) {
		this.puropprice = puropprice;
	}
	public Date getPuropindate() {
		return puropindate;
	}
	public void setPuropindate(Date puropindate) {
		this.puropindate = puropindate;
	}
	public int getPuropcot() {
		return puropcot;
	}
	public void setPuropcot(int puropcot) {
		this.puropcot = puropcot;
	}
    
}
