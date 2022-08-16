package com.map.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.UserDAO;

public class SignUpReg implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainUrl", "login/signup.jsp");
		
        String pid = request.getParameter("pid");
        String pw = request.getParameter("pw");
        String pname = request.getParameter("pname");
        String number = request.getParameter("number");
        String mail =request.getParameter("mail");
        
        
        
        if(pid!=null&&pw!=null&&pname!=null&&number!=null&&mail!=null) {
        	
        }
	}

}
