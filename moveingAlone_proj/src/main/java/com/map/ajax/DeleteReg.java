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

public class DeleteReg implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
	
		String[] idList= request.getParameter("id").split(",");
		
		
		UserDTO dto = new UserDAO().oneUser(request.getParameter("id"));
		
		UserDAO dao = new UserDAO();
		
		for (String id : idList) {
			dao.managerDelete(id);
		}
		dao.close();
		JSONObject data = new JSONObject();
//		
		try {
		
		data.put("chk","true");
			
		String res = data.toString();
		
		response.getWriter().append(data.toJSONString());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
