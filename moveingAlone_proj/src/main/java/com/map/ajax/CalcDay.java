package com.map.ajax;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import com.map.model.CalculateDAO;
import com.map.model.CalculateDTO;

public class CalcDay implements AjaxService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		
		ArrayList<CalculateDTO> list = new CalculateDAO().monthList(start, end);
		
		JSONArray data = new JSONArray();
		for (CalculateDTO dto : list) {
			data.add( URLEncoder.encode(dto.getPo_name())+","+URLEncoder.encode(dto.getQuantity()+"")+","+URLEncoder.encode(dto.getUnit_price()+"")+","+URLEncoder.encode(dto.getPrice()+"")+","+URLEncoder.encode(dto.getCal_type()));			
		}
		
		try {
			response.getWriter().append(data.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
