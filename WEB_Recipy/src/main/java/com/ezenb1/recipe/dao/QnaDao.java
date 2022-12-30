package com.ezenb1.recipe.dao;

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
	
	public ArrayList<QnaVO> selectQna(Paging paging) {
		ArrayList<QnaVO> list = new ArrayList<QnaVO>();
		
		String sql = "select *from ("
				+ " select*from ("
				// 모든 파일 조회시 비밀글-1, 공개글-0 내림차순(최신글)로 정렬 하기 
				+ " select rownum as rn, q.*from ((select * from qna where secret='0' order by qseq desc) q)"
				+ ") where rn>=? "  
				+ ") where rn<=? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum() );
			pstmt.setInt(2, paging.getEndNum() );
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				QnaVO qvo = new QnaVO();
				qvo.setQseq(rs.getInt("qseq") );
				qvo.setQsubject(rs.getString("qsubject") );
				qvo.setQcontent(rs.getString("qcontent") );
				qvo.setId(rs.getString("id"));
				qvo.setQnadate(rs.getTimestamp("qnadate"));
				qvo.setQnapass(rs.getString("qnapass"));
				qvo.setReplyQna(rs.getString("replyQna"));
				qvo.setRep(rs.getInt("rep"));
				list.add(qvo);
			}	
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	}
		return list;
	}

	public int getMyCount(String id) { // 내가 쓴 QnaList를 구하는 메서드
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

	public QnaVO getQna(String qseq) {
		QnaVO qvo = new QnaVO();
		String sql = "select * from qna where qseq =?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(qseq));
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				qvo = new QnaVO();
				qvo.setQsubject(rs.getString("qsubject"));
				qvo.setQcontent(rs.getString("qcontent"));
				qvo.setId(rs.getString("id"));
				qvo.setQnadate(rs.getTimestamp("qnadate"));
				qvo.setReplyQna(rs.getString("replyqna"));
				qvo.setRep(rs.getInt("rep"));
			}
	} catch (SQLException e) {e.printStackTrace();
	} finally { Dbman.close(con, pstmt, rs);	
	}
		return qvo;
	}

	public void insertQna(QnaVO qvo) {
		// 
		String sql ="insert into qna (qseq, qsubject, qcontent, id) values (qna_seq.nextval, ?, ?, ?)";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, qvo.getQsubject() );
			pstmt.setString(2, qvo.getQcontent() );
			pstmt.setString(3, qvo.getId());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	
		}
	}

	public void updateQna(QnaVO qvo) {
		
		con = Dbman.getConnection();
		String sql = "update Qna set id=?, qsubject=?, qcontent=?, secret=?";
	
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, qvo.getId() );
			pstmt.setString(2, qvo.getQsubject() );
			pstmt.setString(3, qvo.getQcontent() );
			pstmt.setString(4, qvo.getSecret() );
		
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);}
	}

	public void deleteQna(String qseq) {
		String sql = "delete from Qna where qseq=?";
		con = Dbman.getConnection();	
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(qseq) );
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);}
	}

	public QnaVO getQna(int qseq) {
		QnaVO qvo = null;
		
		String sql = "select * from qna where qseq=?";
		con = Dbman.getConnection();	
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs=pstmt.executeQuery();
			if( rs.next() ) {
				qvo = new QnaVO();
				qvo.setQseq(rs.getInt("qseq"));
				qvo.setId(rs.getString("id"));
				qvo.setQsubject(rs.getString("qsubject"));
				qvo.setQnadate(rs.getTimestamp("qnadate"));
				qvo.setQcontent(rs.getString("qcontent"));
				qvo.setSecret(rs.getString("secret"));
				qvo.setReplyQna(rs.getString("replyqna"));
				qvo.setRep(rs.getInt("rep"));
			}
				
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);}

			return qvo;
		}

	public int getAllCount() {
		int count = 0;
		
		String sql="select count(*) as cnt from qna";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) count = rs.getInt("cnt");
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	
		}

		return count;
	}

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
			while(rs.next() ) { // qnapass 내용 추가
				QnaVO qvo = new QnaVO();
				qvo.setQseq(rs.getInt("qseq") );
				qvo.setQsubject(rs.getString("qsubject") );
				qvo.setQcontent(rs.getString("content") );
				qvo.setId(rs.getString("id"));
				qvo.setQnapass(rs.getString("qnapass"));
				qvo.setQnadate(rs.getTimestamp("qnadate"));
				qvo.setReplyQna(rs.getString("replyQna"));
				qvo.setRep(rs.getInt("rep"));
				list.add(qvo);
			}	
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);	}
		return list;
	}
}
