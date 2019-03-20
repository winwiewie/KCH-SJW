package com.tj.board;

import java.util.Date;

public class BoardDto {

	private int boardNo = 0;
	private int mNo = 0;
	private String mName = "";
	private String title = "";
	private String body = "";
	private Date creDate = null;
	private Date modDate = null;

	public BoardDto(int boardNo, String mName, String title, Date creDate) {
		super();
		this.boardNo = boardNo;
		this.mName = mName;
		this.title = title;
		this.creDate = creDate;
	}

	public BoardDto(int boardNo, int mNo, String mName, String title, String body, Date creDate, Date modDate) {
		super();
		this.boardNo = boardNo;
		this.mNo = mNo;
		this.mName = mName;
		this.title = title;
		this.body = body;
		this.creDate = creDate;
		this.modDate = modDate;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Date getCreDate() {
		return creDate;
	}

	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}

	public Date getModDate() {
		return modDate;
	}

	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}

}
