package com.ezenb1.recipe.controller.action.member;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenb1.recipe.controller.action.Action;
import com.ezenb1.recipe.dao.MemberDao;
import com.ezenb1.recipe.dto.MembersVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ���޵� �Ķ���͵��� VO ��ü�� �ְ� insertMember�޼��带 ȣ���ϼ���

		HttpSession session = request.getSession();

		// request 에서 세션을 추출한 후 session.getServletContext()를 사용합니다.
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("imageProfile");

		MultipartRequest multi = new MultipartRequest(request, path, // 저장경로
				5 * 1024 * 1024, // 파일 제한용량
				"UTF-8", new DefaultFileRenamePolicy());

		MembersVO mvo = new MembersVO();
		mvo.setId(multi.getParameter("id"));
		mvo.setPwd(multi.getParameter("pwd"));
		mvo.setName(multi.getParameter("name"));
		mvo.setPhone(multi.getParameter("phone"));
		mvo.setEmail(multi.getParameter("email"));
		mvo.setNick(multi.getParameter("nick"));
		mvo.setAddress1(multi.getParameter("address1"));
		mvo.setAddress2(multi.getParameter("address2"));
		mvo.setZip_num(multi.getParameter("zip_nup"));
		mvo.setUseyn(multi.getParameter("useyn"));
		mvo.setImg(multi.getFilesystemName("img"));

		MemberDao mdao = MemberDao.getInstance();
		mdao.insertMember(mvo);

		response.sendRedirect("product.do?command=index");

	}

}
