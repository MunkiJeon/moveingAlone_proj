package com.map.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.UserDAO;
import com.map.model.UserDTO;

public class StaffManagement implements ManagerService {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<UserDTO> mainData = new UserDAO().allUser();
		
		request.setAttribute("mainData", mainData);
		request.setAttribute("mainUrl", "manager/staffmanagement.jsp");
	}
}
