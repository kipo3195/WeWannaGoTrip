package net.wannago.article.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.wannago.article.service.ArticleService;
import net.wannago.article.util.Util;
import net.wannago.article.vo.ArticleDTO;

@Controller
@RequestMapping("article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/list")
	//@ResponseBody 지워야 jsp가 활성화 됨
	public String showList(
						Model model, 
						@RequestParam Map<String, Object> param
									) throws Exception  { //데이터를 던지려면 Model = 바구니역할
/* 
		 List<ArticleDTO> articles = new ArrayList<>(); 
		 articles.add(new ArticleDTO(1,"2021-02-13 18:40:00","2021-02-13 18:40:01", "제목1" ,"내용1")); 
		 데이터를 서비스에서 가져오자
*/		
		int totalCount = articleService.getTotalCount();	
		int itemsCountInAPage = 10;
		int totalPage = (int)Math.ceil( totalCount / (double)itemsCountInAPage); //올림
		int pageMenuArmSize = 5;
		
		int page= Util.getAsInt(param.get("page"),1); //현재 페이지
		
		//페이지 시작
		int pageMenuStart = page - pageMenuArmSize;
			if(pageMenuStart < 1) {
				pageMenuStart =1;   }
				
		//페이지 마지막
		 int pageMenuEnd = page + pageMenuArmSize ;
			if(pageMenuEnd > totalPage) {
				pageMenuEnd = totalPage; }
		
		param.put("itemsCountInAPage", itemsCountInAPage);
		
		List<ArticleDTO> articles = articleService.getArticles(param); //()->param
		//Model에 담기
		model.addAttribute("articles",articles); //articles 라는 KEY이름으로 접근가능
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("pageMenuArmSize",pageMenuArmSize);
		model.addAttribute("pageMenuStart",pageMenuStart);
		model.addAttribute("pageMenuEnd",pageMenuEnd);
		model.addAttribute("page",page);
	
		return "article/list";
	}
	
	
	
	@RequestMapping("/detail")
	public String showDetail(Model model, int id) {
		
		ArticleDTO article = articleService.getArticleById(id);
		System.out.println("article : "+article);// 두 눈으로 확인
		
		model.addAttribute("article",article);
		return "article/detail";
	}
	
	
	@RequestMapping(value="/doDelete", produces = "text/html; charset=utf8" )
	@ResponseBody
	public String doDelete( int id) { // 화면을 보여줄 필요가없음. model제거.
		
		articleService.deleteArticleById(id);
		//location.href 로 가면 고객이 뒤로가기해서 다시 실행 될 수있음 replace는 history에 남지않음
		return String.format("<script > alert(' %d번 글을 삭제했습니다. '); "
			          + " location.replace('/trip/article/list'); </script>", id);
		
	}
	
	
	@RequestMapping("/modify") // 수정 = 상세페이지
	public String showModify(Model model , int id) { 
		
		ArticleDTO article = articleService.getArticleById(id);
		model.addAttribute("article",article);
		
		return "article/modify";
	}
	
	
	@RequestMapping(value="/doModify", produces = "text/html; charset=utf8")
	@ResponseBody
	public String doModify( int id, String title , String body) { // 수정 - 정보 3개
		
		articleService.modifyArticle(id , title , body);
		
		return String.format("<script> alert('%d번 글을 수정했습니다.  '); "
		+ " location.replace('/trip/article/detail?id=%d'); </script>", id , id);
		
	}
	
	
	@RequestMapping("/write")
	public String showWrite() {
			 return "article/write";
	}
	
	@RequestMapping(value="/doWrite" , produces = "text/html; charset=utf8")
	@ResponseBody
	//public String doWrite( String title , String body) { // 글생성 - 정보 2개 하지만 들어가야 할 내용이 많다면
	public String doWrite(@RequestParam Map<String,Object> param) {
			//@RequestParam을 이용하면  param 이라는 변수로 모든 데이터가 다 들어옴
	
		//articleService.writeArticle( title , body); // 글이 생성되면 id가 생성됨, id값도 
		int id = articleService.writeArticle(param); 
		
		return String.format("<script> alert('%d번 글이 작성되었습니다.'); "
		+ " location.replace('/trip/article/detail?id=%d'); </script>",id, id);	
		
	 }
	
	
	
	
}
