package com.tj.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tg.member.MemberDto;

public class BoardServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp";
		String password = "jsp";

		String sql = "";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);

			sql = "SELECT B.BOARD_NO,B.TITLE, M.MNAME,B.CRE_DATE";
			sql += " FROM BOARD B,MEMBERS M";
			sql += " WHERE B.MNO = M.MNO";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			System.out.println("쿼리 수행 성공");

			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");

			ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();

			int boardNo = 0;
			String title = "";
			String mName = "";
			Date creDate = null;

			while (rs.next()) {
				boardNo = rs.getInt("BOARD_NO");
				title = rs.getString("TITLE");
				mName = rs.getString("MNAME");
				creDate = rs.getDate("CRE_DATE");

				BoardDto boardDto = new BoardDto(boardNo, title, mName, creDate);
				boardList.add(boardDto);
			}
			
			req.setAttribute("boardList", boardList);
			
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/board/boardView.jsp");
			
			dispatcher.include(req, res);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// 예외처리 페이지로 위임
			req.setAttribute("error", e);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/error.jsp");

			dispatcher.forward(req, res);

		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} // if(rs != null) end

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} // finally end
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
