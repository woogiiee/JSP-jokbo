package edu.bit.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.ex.dao.BDao;
import edu.bit.ex.dto.BDto;

public class BWriteCommand implements BCommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BDao dao =new BDao();
		dao.write(bName, bTitle, bContent);
		
	}
}
