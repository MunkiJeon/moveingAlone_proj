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

public class AddModify implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
		}
	
		
		UserDTO dto = new UserDAO().oneUser(request.getParameter("id"));
		
		
		JSONObject data = new JSONObject();
			data.put("id",dto.getId());			
			data.put("pw",dto.getPw());			
			data.put("tel",dto.getTel());			
			data.put("name",dto.getName());			
			data.put("email",dto.getEmail());			
		
			try {
				response.getWriter().append(data.toString());
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		try {
			response.getWriter().append(data.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
