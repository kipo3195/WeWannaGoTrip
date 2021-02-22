package net.wannago.article.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.wannago.article.dao.ArticleDAO;
import net.wannago.article.util.Util;
import net.wannago.article.vo.ArticleDTO;

@Service
public class ArticleService {

	@Autowired
	private ArticleDAO articleDao;
	
	// 게시물 리스트    //
	public List<ArticleDTO> getArticles(Map<String, Object> param)  throws Exception{
		
		int page = Util.getAsInt(param.get("page"),1); // 외부에서 입력안되면 1페이지
/*
   if(page == -1) { page = 1; }
*/
		// 한 페이지에 나오는 게시물의 개수
		int itemsCountInAPage = Util.getAsInt(param.get("itemsCountInAPage"),10);
		
		if(itemsCountInAPage > 100) {
			itemsCountInAPage = 100;
		}else if(itemsCountInAPage < 1) {
			itemsCountInAPage = 1;
		}
		
		int limitFrom = (page -1) *  itemsCountInAPage;
			// 1페이지 0  ,  2페이지 10 ,  3페이지 20
		int limitTake = itemsCountInAPage;
			
			param.put("limitFrom", limitFrom);
			param.put("limitTake", limitTake);
	
			
		return articleDao.getArticles(param);	
	}

	
	// id로 게시물 상세보기
	public ArticleDTO getArticleById(int id) {
		return articleDao.getArticleById(id);
	}

	
	// 게시물 삭제
	public void deleteArticleById(int id) {
		articleDao.deleteArticleById(id);
	}

	
	// 게시물 수정
	public void modifyArticle(int id, String title, String body) {
		articleDao.modifyArticle(id,title,body);
	}

	
	// 게시물 생성
	public int writeArticle(Map<String, Object> param) {
		articleDao.writeArticle(param);
		
/*
		     // Mapper에서 keyProperty="id"를 지정후 id값을 가지고올 수 있음 
		    // BigInt -> Int로 바꿀땐 util을 써야함
		 * BigInteger bigIntId =(BigInteger)param.get("id");  
		 * int id = bigIntId.intValue();
		    // 추상화메소드를 이용하는게 편함
 */
		int id = Util.getAsInt(param.get("id"));
		
		
		return id;
	}
	// list 총 게시물
	public int getTotalCount() {
		return articleDao.getTotalCount();
	}

}
