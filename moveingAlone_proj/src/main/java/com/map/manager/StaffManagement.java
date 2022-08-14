package com.map.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.userDAO;
import com.map.model.userDTO;

public class StaffManagement implements ManagerService {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<userDTO> mainData = new userDAO().allUser();
		
		request.setAttribute("mainData", mainData);
		request.setAttribute("mainUrl", "manager/staffmanagement.jsp");
	}
}
