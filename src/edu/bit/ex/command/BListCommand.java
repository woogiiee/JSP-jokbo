package edu.bit.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.ex.dao.BDao;
import edu.bit.ex.dto.BDto;

public class BListCommand implements BCommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao =new BDao();
		ArrayList<BDto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
		
		
	}
}
