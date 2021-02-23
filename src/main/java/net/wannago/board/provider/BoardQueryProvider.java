package net.wannago.board.provider;

import org.apache.ibatis.jdbc.SQL;

import net.koreate.util.SearchCriteria;

public class BoardQueryProvider {

	public String searchSelectSQL(SearchCriteria cri) {
		
		System.out.println("SearchSelectSQL 호출");
		
		//Test
/*
		SQL sql = new SQL(); //함수형으로 객체를 완성시켜줌
		   //sql.SELECT("title,content,writer")
		sql.SELECT("*");
		sql.FROM("re_tbl_board");
		//sql.WHERE("title LIKE CONCAT('%',"+cri.getKeyword()+",'%')");
		sql.WHERE("title LIKE CONCAT('%','','%')");
		sql.OR();
		sql.WHERE("content LIKE CONCAT('%','','%')");
		sql.ORDER_BY("bno DESC");
		sql.LIMIT(cri.getPageStart()+","+cri.getPerPageNum());
		
		String query = sql.toString();
		System.out.println(sql);
		
		return query;
		
		//return sql.toString(); //완성된 쿼리를 가져오는건 toString을 이용하면 됨
*/
		
		SQL sql = new SQL() {
			
			{
			   SELECT("*");
			   FROM("pro_board");
			   
			   setSearchWhere(cri, this); //this가 먼저 받아서 실행되고 나서 order_by가 실행됨
			   
			   //ORDER_BY("bno DESC");
			   ORDER_BY("origin DESC, seq ASC");			   
			   LIMIT(cri.getPageStart()+","+cri.getPerPageNum());
			}
		};
		String query = sql.toString();
		System.out.println(query);
		return query;
		
	}
	
	//추가
	public String searchListCount(SearchCriteria cri) {
		
		/* 밑에꺼라 같은거임
		 * SQL sql1 = new SQL(); 
		 * sql1.SELECT("count(*)"); 
		 * sql1.FROM("re_tbl_board");
		 * setSearchWhere(cri,sql1); 
		 * String query = sql1.toString();
		 */
		
		
		
		return new SQL() { //클래스정의할때 SQL(){} 이름이 없는 메소드 정의하려고 {}한번더.  외부에서 호출할 방법이 없으니깐.  
			{
				SELECT("count(*)");
				FROM("pro_board");
				setSearchWhere(cri,this);
			}
		}.toString();
	}
	
	
	
	
	
		public void setSearchWhere(SearchCriteria cri, SQL sql) {
		
	
		if(cri.getSearchType() != null) {
			String titleQuery = "title LIKE CONCAT('%','"+cri.getKeyword()+"','%')"; //'문자열을 감싸기'
			String contentQuery = "content LIKE CONCAT('%','"+cri.getKeyword()+"','%')";
			String writerQuery = "writer LIKE CONCAT('%','"+cri.getKeyword()+"','%')";
			
			switch(cri.getSearchType()) {
			case "t" :
				sql.WHERE(titleQuery);
				break;
			case "c" :
				sql.WHERE(contentQuery);
				break;
			case "w" :
				sql.WHERE(writerQuery);
				break;
			case "tc" :
				sql.WHERE(titleQuery).OR().WHERE(contentQuery);
				break;
			case "cw" :
				sql.WHERE(writerQuery).OR().WHERE(contentQuery);
				break;
			case "tcw" :
				sql.WHERE(titleQuery).OR().WHERE(writerQuery).OR().WHERE(contentQuery);
				break;
		   }
			
			
		}
	
}

}
