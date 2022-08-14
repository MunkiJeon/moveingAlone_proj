package com.map.ajax;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.map.guest.GuestService;
import com.map.model.InquiryDAO;
import com.map.model.InquiryDTO;

public class InquiryList implements GuestService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<InquiryDTO> list = new InquiryDAO().atmosphere();
		
		
		JSONObject data = new JSONObject();
		
		
		
		for (InquiryDTO dto : list) {
			data.put(dto.getId(), dto.getContents());
		}
		try {
			response.getWriter().append(data.toJSONString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
