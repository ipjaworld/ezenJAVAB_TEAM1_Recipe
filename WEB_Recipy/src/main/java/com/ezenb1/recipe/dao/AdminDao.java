package com.ezenb1.recipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezenb1.recipe.dto.MembersVO;
import com.ezenb1.recipe.dto.ReplyVO;
import com.ezenb1.recipe.util.Dbman;
import com.ezenb1.recipe.util.Paging;

public class AdminDao {
	
	private AdminDao() {}
	private static AdminDao instance = new AdminDao();
	public static AdminDao getInstance() { return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public int getAllCount(String tableName, String fieldName, String key) {
		
		int count = 0;
		con = Dbman.getConnection();
		String sql = "select count(*) as cnt from " + tableName + " where " + fieldName + " like '%'||?||'%'";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  key);
			rs = pstmt.executeQuery();
			if(rs.next())
				count = rs.getInt("cnt");
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		return count;
	}
	public ArrayList<MembersVO> selectMember(Paging paging, String key) {
		ArrayList<MembersVO> list = new ArrayList<MembersVO>();
		String sql = " select * from ("
				+ " select * from ("
				+ " select rownum as rn, m.* from "
				+ "(( select * from members where name like '%'||?||'%' order by indate desc ) m)"
				+ " ) where rn>=?"
				+ " ) where rn<=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  key);
			pstmt.setInt(2,  paging.getStartNum() );
			pstmt.setInt(3,  paging.getEndNum() );
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MembersVO mvo = new MembersVO();
				mvo.setId(rs.getString("id"));
				mvo.setPwd(rs.getString("pwd"));
				mvo.setName(rs.getString("name"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setEmail(rs.getString("email"));
				mvo.setNick(rs.getString("nick"));
				mvo.setAddress1(rs.getString("address1"));
				mvo.setZip_num(rs.getString("zip_num"));
				mvo.setIndate(rs.getTimestamp("indate"));
				mvo.setImg(rs.getString("img"));
				mvo.setUseyn(rs.getString("useyn"));
				list.add(mvo);
			}
		} catch (SQLException e) {	e.printStackTrace();
		} finally {  Dbman.close(con, pstmt, rs);  }
		return list;
	}
	public void deleteMember(String delId) {
		
		String sql = "delete from members where id=?";
		con = Dbman.getConnection();
		try {
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setString(1, delId);
		      pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
	    } finally { Dbman.close(con, pstmt, rs); }   	
		
	}
	public ArrayList<ReplyVO> selectReply(Paging paging, String key) {
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		String sql = " select * from ("
				+ " select * from ("
				+ " select rownum as rn, r.* from "
				+ "(( select * from reply where id like '%'||?||'%' order by replydate desc ) r)"
				+ " ) where rn>=?"
				+ " ) where rn<=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  key);
			pstmt.setInt(2,  paging.getStartNum() );
			pstmt.setInt(3,  paging.getEndNum() );
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReplyVO rvo = new ReplyVO();
				rvo.setReplyseq(rs.getInt("replyseq"));	
				rvo.setId(rs.getString("id"));	
				rvo.setRnum(rs.getInt("rnum"));
				rvo.setContent(rs.getString("content"));
				rvo.setReplydate(rs.getTimestamp("replydate"));			
				list.add(rvo);
			}
		} catch (SQLException e) {	e.printStackTrace();
		} finally {  Dbman.close(con, pstmt, rs);  }
		return list;
	}
	public void deleteReply(int replyseq) {
		
		String sql = "delete from reply where replyseq=?";
		con = Dbman.getConnection();
		try {
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setInt(1, replyseq);
		      pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
	    } finally { Dbman.close(con, pstmt, rs); }  
		
	}
	public MembersVO getMember(String id) {
		MembersVO mvo = null;
		String sql = "select * from members where id=?";
		con = Dbman.getConnection();
		try {			  
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setString(1, id);		    
		      rs=pstmt.executeQuery();
		      if(rs.next()) {
		    	  mvo = new MembersVO();
		    	  mvo.setId(rs.getString("id"));
		    	  mvo.setPwd(rs.getString("pwd"));
		    	  mvo.setName(rs.getString("name"));
		    	  mvo.setPhone(rs.getString("phone"));
		    	  mvo.setEmail(rs.getString("email"));
		    	  mvo.setNick(rs.getString("nick"));
		    	  mvo.setAddress1(rs.getString("address1"));
		    	  mvo.setAddress2(rs.getString("address2"));
		    	  mvo.setZip_num(rs.getString("zip_num"));
		    	  mvo.setIndate(rs.getTimestamp("indate"));
		    	  mvo.setImg(rs.getString("img"));		    	  
		      }
		} catch (Exception e) { e.printStackTrace();
	    } finally { Dbman.close(con, pstmt, rs); } 
		
		return mvo;
	}
	public void sleepMember(String useyn,String sleep) {
		String sql="";
		if(useyn.equals("Y")) {
		sql = "update members set useyn ='N' where id=?";
		}else {
		sql = "update members set useyn ='Y' where id=?";	
		}
		
		con = Dbman.getConnection();
		try {
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setString(1, sleep);
		      pstmt.executeUpdate();
		} catch (Exception e) { e.printStackTrace();
	    } finally { Dbman.close(con, pstmt, rs); } 
		
	}
	public String selectUseyn(String sleep) {
		String sql = "select useyn from members where id=?";
		//select useyn from members where id='scott';
		String useyn = "";
		con = Dbman.getConnection();
		try {
		      pstmt = con.prepareStatement(sql); 
		      pstmt.setString(1, sleep);
		      rs= pstmt.executeQuery();
		      if(rs.next()) {
		    	  useyn=rs.getString("useyn");
		      }
		} catch (Exception e) { e.printStackTrace();
	    } finally { Dbman.close(con, pstmt, rs); } 
		return useyn;
	}
		
	}
	

