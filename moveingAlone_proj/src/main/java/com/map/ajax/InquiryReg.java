package com.map.ajax;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.map.guest.GuestService;
import com.map.model.InquiryDAO;
import com.map.model.InquiryDTO;

public class InquiryReg implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("UTF-8");
		
		String id =request.getParameter("id");
		String answer =request.getParameter("addData");
		String contents =request.getParameter("contents");
		String[] conArr = contents.split("+");
		for (String  str : conArr) {
			contents +=  str+" ";
		}
			
		InquiryDTO dto = new InquiryDTO();
		dto.setId(id);
		dto.setAnswer(answer);
		dto.setContents(contents.trim());
		int cnt = new InquiryDAO().modify(dto);
		JSONObject data = new JSONObject();
		
		System.out.println("들어오나?");
		System.out.println(cnt);
		System.out.println(id);
		System.out.println(contents);
		System.out.println(answer);
		data.put("cnt",cnt);
		String res = data.toJSONString();
		response.getWriter().append(res);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
