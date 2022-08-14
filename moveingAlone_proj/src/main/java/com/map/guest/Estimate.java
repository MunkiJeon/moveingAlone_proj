package com.map.guest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Estimate implements GuestService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String pageNum = request.getParameter("num");
		if(pageNum==null) pageNum="";
		
		request.setAttribute("mainUrl","guest/estimate"+pageNum+".jsp");
	}

}
