package proj21_funding.dto;

import java.util.Date;

public class Board {

	private int boardNo; // 게시글번호
	private BoardCategory categoryNo; // 게시글 분류
	private String boardTitle; // 공지제목
	private String boardContent; // 공지내용
	private Date boardDate; // 작성일
	private int boardReadCount; // 조회수

	public Board() {
		super();
	}

	public Board(int boardNo, BoardCategory categoryNo, String boardTitle, String boardContent, Date boardDate,
			int boardReadCount) {
		super();
		this.boardNo = boardNo;
		this.categoryNo = categoryNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardReadCount = boardReadCount;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public BoardCategory getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(BoardCategory categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", categoryNo=" + categoryNo + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardDate=" + boardDate + ", boardReadCount=" + boardReadCount
				+ "]";
	}

}