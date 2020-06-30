package edu.bit.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.ex.dao.BDao;
import edu.bit.ex.dto.BDto;

public class BDeleteCommand implements BCommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId=request.getParameter("bId");
		BDao dao = new BDao();
		dao.delete(bId);
		
	}
}
