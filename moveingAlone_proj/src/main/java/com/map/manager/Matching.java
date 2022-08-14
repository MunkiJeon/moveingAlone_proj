package com.map.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.model.matchingDAO;
import com.map.model.matchingDTO;
import com.map.model.userDAO;
import com.map.model.userDTO;

public class Matching implements ManagerService {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<matchingDTO> mainData = new matchingDAO().allUser();
		
		request.setAttribute("mainData", mainData);
		request.setAttribute("mainUrl", "manager/matching.jsp");
	}
}
