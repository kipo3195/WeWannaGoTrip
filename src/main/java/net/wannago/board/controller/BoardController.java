package net.wannago.board.controller;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.koreate.util.SearchCriteria;
import net.wannago.board.service.BoardService;
import net.wannago.board.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	BoardService bs;
	
	
	@GetMapping("/register")
	public String register() {
		return "board/register";
	}
	
	
	@PostMapping("/register")
	public String register(
				BoardVO vo
			  ) throws Exception{
		// 삽입 처리
		bs.regist(vo);
	
		
		return "redirect:/board/listReply"; //최근에 작성된(내가 작성한 글이 있는지 확인)listReply로 바로 이동
		//여기로가면 정보가 있다고 redirect를 이용하면 됨
		
		//return "board/listPage"; 
		//리스트화면 출력은 가능하지만 모델에대한 게시글 올려주고 listReply가 하는일을 똑같이 함
	}
	
	
	@GetMapping("/listReply")
	public String listReply(
			@ModelAttribute("cri") SearchCriteria cri,    // SearchCriteria
			Model model
			)throws Exception {
		Map<String,Object> models = bs.getListModel(cri);
		model.addAllAttributes(models); //models를 넣는거임
		
		return "board/listPage";
	}
	
	
	@GetMapping("/readPage")
	public String readPage(
			SearchCriteria cri,
			int bno,
			RedirectAttributes rttr ) throws Exception {
		
		bs.updateCnt(bno);
		
		rttr.addAttribute("bno",bno);
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		return "redirect:/board/read";
	}
	
	
	@GetMapping("/read")
	public String readPage(
			@ModelAttribute("cri") SearchCriteria cri,
			int bno,
			Model model) throws Exception{
		
		model.addAttribute("board",bs.readReply(bno));
		return "board/readPage";
	}
	
	@GetMapping("/replyRegister")
		public String replyRegister(
				int bno,
				@ModelAttribute("cri") SearchCriteria cri,
				Model model
				      )throws Exception {
		model.addAttribute("board",bs.readReply(bno));
		
		return "board/replyRegister";
	}
	
	@PostMapping("/replyRegister")
	public String replyRegister(
			BoardVO vo,
			@ModelAttribute("cri") SearchCriteria cri,
			Model model,
			RedirectAttributes rttr
			      )throws Exception {
		// 답글 작성 완료
		System.out.println(vo);
		System.out.println(cri);
	
	
		//0205
		bs.replyRegister(vo);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		
		return "redirect:/board/listReply";
    }
	
	
	// 게시글 수정
	@GetMapping("/modifyPage")
	public String modifyPage(
				int bno,
				@ModelAttribute("cri") SearchCriteria cri,
				Model model
			)throws Exception {
		
		model.addAttribute("board",bs.readReply(bno));
		
		return "board/modifyPage";
	}
	
	
	@PostMapping("/modifyPage")
	public String modifyPage(
			BoardVO vo,
			@ModelAttribute("cri") SearchCriteria cri,
			RedirectAttributes rttr
			)throws Exception{
		
		//  수정
		bs.modify(vo);
		
		// 추가
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		rttr.addAttribute("bno",vo.getBno());
		
		
		//rttr.addAttribute("bno",vo.getBno());
		return "redirect:/board/read";
	}

	
	@PostMapping("/remove")
	public String remove(
			int bno,
			@ModelAttribute("cri") SearchCriteria cri,
			RedirectAttributes rttr 
			) throws Exception{
		
		//삭제처리
		bs.remove(bno);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		
		return "redirect:/board/listReply";
	}
	
}
