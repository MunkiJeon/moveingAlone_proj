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

public class InquiryList implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("UTF-8");
		ArrayList<InquiryDTO> list = new InquiryDAO().atmosphere();
		
		
		JSONArray data = new JSONArray();
		
		
		for (InquiryDTO dto : list) {
			              
			data.add(URLEncoder.encode(dto.getId())+" : "+ URLEncoder.encode(dto.getContents()));
		}
		String res = data.toJSONString();
			response.getWriter().append(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
