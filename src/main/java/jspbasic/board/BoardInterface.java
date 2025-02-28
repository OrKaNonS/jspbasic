package jspbasic.board;

import java.sql.SQLException;
import java.util.List;

public interface BoardInterface {
	
	public abstract List<Board> listBoard(String searchKeyword, String searchValue, String bsort) throws SQLException;
	
	public abstract Board getBoard(int bid) throws SQLException;
	
	public abstract int registBoard(Board board) throws SQLException;
	
	public abstract int updateBoard(Board board) throws SQLException;
	
	public abstract int deleteBoard(int bid) throws SQLException;
	
	public abstract int addCount(int bid) throws SQLException;

}