package com.map.ajax;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.map.model.CalculateDAO;
import com.map.model.CalculateDTO;
import com.map.model.UserDAO;
import com.map.model.UserDTO;

public class Modify implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
		}
	
		System.out.println(request.getParameter("id"));
		
		
		UserDTO dto = new UserDAO().oneUser(request.getParameter("id"));
		//JSONObject data = new JSONObject();
		JSONArray data = new JSONArray();
		
		try {
		
		//data.put("id",dto.getId());
		//data.put("pw",dto.getPw());
		//data.put("name",dto.getName());
		//data.put("email",dto.getEmail());
		//data.put("tel",dto.getTel());
		//URLEncoder.encode("UTF-8",
		

		data.add(dto.getId());
		data.add(dto.getPw());
		data.add(dto.getName());
		data.add(dto.getEmail());
		data.add(dto.getTel());
			
		String res = data.toString();
		
		response.getWriter().append(res);
			
		response.getWriter().append(data.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
