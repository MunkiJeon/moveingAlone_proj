package com.map.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.UserDAO;
import com.map.model.UserDTO;

public class SignUpReg implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mainUrl", "login/signup.jsp");
		
        String pid = request.getParameter("pid");
        String pw = request.getParameter("pw");
        String pname = request.getParameter("pname");
        String number = request.getParameter("number");
        String mail =request.getParameter("mail");
        
        UserDTO dto = new UserDTO();
        dto.setId(pid);
        dto.setPw(pw);
        dto.setName(pname);
        dto.setTel(number);
        dto.setEmail(mail);
        
        
        if(pid!=null&&pw!=null&&pname!=null&&number!=null&&mail!=null&&!pid.equals("")&&!pw.equals("")&&!pname.equals("")&&!number.equals("")&&!mail.equals("")) {
        	new UserDAO().insert(dto);
        	request.setAttribute("mainUrl", "login/login.jsp");
        }
	}

}
