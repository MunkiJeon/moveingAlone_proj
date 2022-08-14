package com.map.login;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.UserDAO;
import com.map.model.UserDTO;

public class LoginReg implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainUrl", "login/login.jsp");
		 ArrayList<UserDTO> list = new UserDAO().allUser();
		 String id = request.getParameter("id");
		 String pw = request.getParameter("pw");
		 for (UserDTO dto : list) {
			if(dto.getId().equals(id)&&dto.getPw().equals(pw)) {
				
			}
		}
	}

}
