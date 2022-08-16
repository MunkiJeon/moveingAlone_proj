package com.map.guest;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.map.model.EstimateDAO;

public class Estimate implements GuestService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String pageNum = request.getParameter("num");
		String test = null;
		EstimateDAO data = new EstimateDAO();
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		
		if(pageNum==null) pageNum="";
		else if(pageNum!=null) {
			if(pageNum.equals("2")) {
				String start_point = request.getParameter("start_point");
				String end_point = request.getParameter("end_point");
				String time = request.getParameter("time");
				String option = request.getParameter("option");
				test= "["+start_point+"]["+end_point+"]["+time+"]["+option;
			}else if(pageNum.equals("3")) {
				String start_point = request.getParameter("start_point");
				String end_point = request.getParameter("end_point");
				String time = request.getParameter("time");
				String option = request.getParameter("option");
			}
			System.out.println(pageNum +"번째 입력 값:"+test); 
			data.addEstiate(pageNum, user_id);
		}
		
		request.setAttribute("mainUrl","guest/estimate"+pageNum+".jsp");
	}

}
