package com.human.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.vo.BoardVO;

public class BoardDAO {

	private Connection conn = null;
	private ResultSet rs = null;

	public BoardDAO() {
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

	public void insert(BoardVO boardVO) {
		if (connect()) {
			System.out.println("aaa");
			String sql="insert into qa values (qa_cnt.nextval,?,?,?,?,?,default,?)";
			try {
				PreparedStatement psmt = conn.prepareStatement(sql);
				psmt.setString(1, boardVO.getId());
				psmt.setString(2, boardVO.getName());
				psmt.setString(3, boardVO.getPass());
				psmt.setString(4, boardVO.getTitle());
				psmt.setString(5, boardVO.getContent());
				psmt.setString(6, boardVO.getChkbox());
				System.out.println(boardVO.getChkbox());
				System.out.println("aaa");
				psmt.executeUpdate();				
				System.out.println("등록 완료");
				conn.close();				
			}catch (Exception e) {
				// TODO: handle exception
			}
		} else {
			System.out.println("입력 불가");
		}
	}
	
	public ArrayList<BoardVO> selectList(){
		ArrayList<BoardVO> alist = new ArrayList<>();
		if(connect()) {
			String sql="select * from qa";
			try {
				Statement stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while(rs.next()) {
					BoardVO b = new BoardVO();
					b.setNum(rs.getInt("num"));					
					b.setName(rs.getString("name"));					
					b.setTitle(rs.getString("title"));
					b.setIndate(rs.getString("indate"));
					b.setChkbox(rs.getString("chkbox"));
					alist.add(b);
					
				}
				conn.close();			
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		return alist;		
	}
	
	public int lastNum() {
		int no=0;
		if(connect()) {
			String sql="select num from qa where rownum =1 order by num desc";
						//select 시퀀스.nextval as cnt_number from dual;   >> write form 먼저 보여주고 그 값을 다시 디비에 저장하는 순서대로 
			try {
				Statement stmt = conn.createStatement();
				System.out.println(no);
				rs = stmt.executeQuery(sql);
				System.out.println(no);
				if(rs.next()) {
					no=rs.getInt("num");
					System.out.println(no);
					conn.close();
				}
				return no;
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		return no;
	}

	public BoardVO selectOne(String no) {
		// TODO Auto-generated method stub
		if(connect()) {
			String sql="select * from qa where num="+no;
			//			  
			try {
				Statement stmt = conn.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next()) {
					BoardVO b = new BoardVO();
					b.setNum(rs.getInt("num"));
					b.setId(rs.getString("id"));
					b.setName(rs.getString("name"));
					b.setTitle(rs.getString("title"));
					b.setContent(rs.getString("content"));
					b.setIndate(rs.getString("indate"));
					return b;
				}
				conn.close();
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return null;
	}
	
	public void del(String no) {
	       
	         if(connect()) {
	            String sql="delete from qa where num=?";
	            try {
	               PreparedStatement psmt = conn.prepareStatement(sql);
	               psmt.setString(1,no);
	               psmt.executeUpdate();
	               System.out.println("등록 완료");
	               conn.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }else {
	            System.out.println("연결을 할 수 없어서 입력을 하지 못합니다.");
	         }
	      
	   }

	
	
	
	

}
