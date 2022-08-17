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

public class ModifyReg implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		
		
		UserDTO dto = new UserDAO().oneUser(request.getParameter("id"));
		JSONArray data = new JSONArray();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setEmail(email);
		dto.setTel(tel);
		
		
		int cnt = new UserDAO().modify(dto);
		try {
			System.out.println(cnt);
			if(cnt>0) {
				data.add("true");
			}else {data.add("false");}
			
		String res = data.toString();
		
		response.getWriter().append(data.toJSONString());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
