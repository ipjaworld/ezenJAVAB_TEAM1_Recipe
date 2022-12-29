package com.ezenb1.recipe.controller.action.qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenb1.recipe.dto.QnaVO;
import com.ezenb1.recipe.util.Dbman;
import com.ezenb1.recipe.util.Paging;

public class QnaDao {
	
	// 싱글톤
	private QnaDao() {}
	private static QnaDao ist = new QnaDao();
	public static QnaDao getInstance() { return ist; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<QnaVO> selectQna(String id, Paging paging) {
		ArrayList<QnaVO> list = new ArrayList<QnaVO>();
		
		String sql = "select *from ("
				+ " select*from ("
				+ " select rownum as rn, q.*from ((select * from qna where id=? order by qseq desc) q)"
				+ ") where rn>=? "  
				+ ") where rn<=? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, paging.getStartNum() );
			pstmt.setInt(3, paging.getEndNum() );
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				QnaVO qvo = new QnaVO();
				qvo.setQseq(rs.getInt("qseq") );
				qvo.setQsubject(rs.getString("qsubject") );
				qvo.setQcontent(rs.getString("content") );
				qvo.setId(rs.getString("id"));
				qvo.setQnadate(rs.getTimestamp("qnadate"));
				qvo.setReplyQna(rs.getString("replyqna"));
				qvo.setRep(rs.getInt("rep"));
				list.add(qvo);
			}	
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	}
		return list;
	}

	public int getAllCount(String id) {
		int count = 0;
		
		String sql="select count(*) as cnt from qna where id=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if ( rs.next() ) count = rs.getInt("cnt");
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	
		}

		return count;
	}
}
