package com.ezenb1.recipe.controller.action.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.AdminDao;
import com.ezenb1.recipe.dto.MembersVO;
import com.ezenb1.recipe.util.Paging;

public class AdminMemListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "admin/member/AdminMemList.jsp"; 
		HttpSession session = request.getSession();
		//String avo = (String)session.getAttribute("loginAdmin");
		String avo = "loginAdmin";
		if( avo == "") { 
			url = "recipe.do?command=admin"; 
		}else {
			
			int page=1;
			
			if( request.getParameter("page")!= null ) {   
				page = Integer.parseInt( request.getParameter("page") );
				session.setAttribute("page", page);
			} else if( session.getAttribute("page")!=null ) {   
				page = (int) session.getAttribute("page") ; 
			} else {   
				session.removeAttribute("page");
			}
			String key="";
			if( request.getParameter("key")!=null) {
				key = request.getParameter("key");
				session.setAttribute("key", key);
			} else if( session.getAttribute("key")!=null ) {
				key = (String)session.getAttribute("key");
			} else {
				session.removeAttribute("key");
			}
			Paging paging = new Paging();
			paging.setPage(page);
			AdminDao adao = AdminDao.getInstance();
			int count = adao.getAllCount("members", "name", key);
			paging.setTotalCount(count);
			ArrayList<MembersVO> list = adao.selectMember( paging, key );
			request.setAttribute("membersList", list);
			request.setAttribute("paging", paging);
			session.setAttribute("key2", key);	
		}
		
	    request.getRequestDispatcher(url).forward(request, response);

	}

}
