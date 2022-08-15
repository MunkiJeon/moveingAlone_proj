package com.map.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.CalculateDAO;

public class Calculate implements ManagerService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainUrl", "manager/calculate.jsp");
		request.setAttribute("list", new CalculateDAO().list());
		
	}

}
