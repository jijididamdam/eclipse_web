package com.human.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.vo.CommVO;

public class CommDAO {
	
	private Connection conn = null;
	private ResultSet rs = null;

	public CommDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("로드성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("로드 실패");
		}
	}

	public boolean connect() {
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "11111111");
			System.out.println("연결성공");
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("연결 실패");
			return false;
		}
	}
	
	public String chkId(String id) {
		String sid = null;
		System.out.println("aaa");
		if(connect()) {
			String sql="select id from qa where id=?";
			try {
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.executeUpdate();
				rs = psmt.executeQuery(sql);
				while(rs.next()) {
					sid=rs.getString("id");
					System.out.println(sid);
					return sid;
				}
				
				conn.close();
				
			}catch (Exception e) {
				// TODO: handle exception
			}
		}

		return null;
	}
	
	public void insertComm(CommVO cvo) {
		if(connect()) {
			String sql="insert into comm values(COMM_CNT.nextval,?,?,?,default)";
			try {
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setInt(1, cvo.getNum());
				psmt.setString(2, cvo.getCid());				
				psmt.setString(3, cvo.getContent());
				psmt.executeUpdate();
				System.out.println("등록완료");
				conn.close();

			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("등록불가");
			}
		}
	}
	
	public ArrayList<CommVO> selectAll(String no) {
		ArrayList<CommVO> clist = new ArrayList<>();
		if(connect()) {
			try {
				String sql = "select * from comm where num=?";
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, no);
				psmt.executeUpdate();
				rs = psmt.executeQuery(sql);
				while(rs.next()) {
					CommVO cvo = new CommVO();
					cvo.setNo(rs.getInt("no"));
					cvo.setCid(rs.getString("id"));
					cvo.setContent(rs.getString("content"));
					cvo.setIndate(rs.getString("indate"));
					clist.add(cvo);
					
				}
				conn.close();
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("쿼리오류");
			}
		}
		return clist;
	}
	

	

}
