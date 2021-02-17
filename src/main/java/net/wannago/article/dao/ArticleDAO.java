package net.wannago.article.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import net.wannago.article.vo.ArticleDTO;


public interface ArticleDAO {

	// 게시물 리스트
	List<ArticleDTO> getArticles(Map<String, Object> param) throws Exception;

	// 게시물 상세보기
	ArticleDTO getArticleById(@Param("id") int id);

	// 게시물 삭제
	void deleteArticleById(@Param("id") int id);

	// 게시물 수정
	void modifyArticle(@Param("id") int id, @Param("title") String title, @Param("body") String body);

	// 게시물 생성
	void writeArticle(Map<String, Object> param); //@Param 안붙여도 됨

	// 총 게시물
	int getTotalCount();

	
	
}
