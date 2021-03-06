package com.tj.board;

public class BoardDto {

	private int boardNo = 0;
	private int mNo = 0;
	private String mName = "";
	private String title = "";
	private String body = "";
	private String creDate = null;
	private String modDate = null;

	public BoardDto(int boardNo, String mName, String title, String creDate) {
		super();
		this.boardNo = boardNo;
		this.mName = mName;
		this.title = title;
		this.creDate = creDate;
	}

	public BoardDto(int boardNo, String mName, String title, String body, String creDate) {
		super();
		this.boardNo = boardNo;
		this.mName = mName;
		this.title = title;
		this.body = body;
		this.creDate = creDate;
	}

	public BoardDto(int boardNo, int mNo, String mName, String title, String body, String creDate) {
		super();
		this.boardNo = boardNo;
		this.mNo = mNo;
		this.mName = mName;
		this.title = title;
		this.body = body;
		this.creDate = creDate;
	}

	public BoardDto(int boardNo, int mNo, String mName, String title, String body, String creDate, String modDate) {
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

	public String getCreDate() {
		return creDate;
	}

	public void setCreDate(String creDate) {
		this.creDate = creDate;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

}
