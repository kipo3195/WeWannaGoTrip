package net.wannago.member.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.hotel.vo.HCommentVO;
import net.wannago.hotel.vo.HotelVO;
import net.wannago.hotel.vo.interHotelVO;
import net.wannago.member.dao.MemberDAO;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	MemberDAO dao;
	
	// 회원가입
	@Override
	public void signup(MemberVO vo) throws Exception {
		
		dao.signup(vo);	
	}

	// 로그인
	@Override
	public MemberVO signin(LoginDTO dto) throws Exception {
		
		return dao.signin(dto);
	}

	// 아이디 정보로 사용자 정보 확인
	@Override
	public MemberVO getMemberById(String mid) throws Exception {
		
		return dao.getMemberById(mid);
	}

	//회원 수정
	@Override
	public int MemberUpdate(MemberVO vo) throws Exception {
		
			return dao.memberUpdate(vo);
			//int member = dao.memberUpdate(vo);
			//System.out.println(member);
		}

	// 회원탈퇴
	@Override
	public int MemberDelete(MemberVO vo) throws Exception {
			  
		return dao.memberDelete(vo);
	}
	
	
	@Override
	public Map<String, String> regIntHotel(int hno, int mno) {
		
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("mno"+mno);
		System.out.println("hno"+hno);
		 int result = dao.searchCount(mno);
		 int already = dao.searchAlready(mno,hno);
		 System.out.println("result : "+result);
		 System.out.println("already : "+already);
		 if(already > 0 ) {
			 System.out.println("이미 관심등록한 게시물");
			 map.put("result", "already");
		 }else {
			 if(result > 4) {
				 System.out.println("더이상 관심호텔 등록 불가");
				 map.put("result","false");
				 
			 }else {
				 dao.regIntHotel(hno,mno);
				 map.put("result","true");
			 }
		 }

		 
		 System.out.println("관심등록 갯수 : " + result);
		 return map;
		 
		
	}

	/* MAP
	 * 
	 * @Override public Map<Integer, Object> getIntHotelList(int mno) { Map<Integer,
	 * Object> map = new HashMap<>(); //호텔 hno가져오기 List<interHotelVO> list =
	 * dao.getIntHno(mno); System.out.println(list); for(int i=0; i<list.size();
	 * i++) { interHotelVO vo= list.get(i);
	 * 
	 * map.put(i,dao.getHotel(vo.getHno())); //호텔 정보만 } System.out.println(map);
	 * //ino ,hno //ino는 어차피 uno정보를 갖고있기때문에 상관없을듯?
	 * 
	 * 
	 * return map; }
	 */
	

	@Override//리스트 두개 넘김
	public Map<String, Object> getIntHotelList(int mno) {
		Map<String, Object> map = new HashMap<>();
		//호텔 hno가져오기
		List<interHotelVO> interlist = dao.getIntHno(mno);
		
		
		//일단 mno로 몇개등록했는지 부터 가져와야함 그리고 그거만큼 반복 ?
		//mno 가 2인것에 대한 호텔정보 
		
		List<Integer> numberList = dao.getHotel(mno);
		List<HotelVO> HotelList = new ArrayList<HotelVO>(); //호텔 정보가 들어갈 리스트
		System.out.println("numberList : "+numberList);
		for(int i=0; i<numberList.size(); i++) {
			  HotelList.add((dao.getHotelList(numberList.get(i))));
			  
			  
		}
		 
		map.put("HotelList", HotelList);
		map.put("interlist", interlist);
		/*
		 * System.out.println(list); for(int i=0; i<list.size(); i++) { interHotelVO vo=
		 * list.get(i);
		 * 
		 * map.put(i,dao.getHotel(vo.getHno())); //호텔 정보만 }
		 */
		
		//inter은 등록된거 다 가져옴
		/*
		 * map.put("interlist", interlist); map.put("Hotellist", Hotellist);
		 */
		
		
		return map;
	}

	//등록한 날짜
	@Override
	public Map<String, Object> getRegMap(int mno) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
			   map.put("interHotelVO",dao.getIntHno(mno));
			
		
		return map;
	}

	//관심등록삭제
	@Override
	public String deleteInterHotel(int ino) {
		
			int result = dao.delete(ino);
			
			if(result != 1) {
				return "fail";
			}
			
		return "Success";
	}

	//댓글 등록
	@Override
	public String addComment(HCommentVO vo) {
		
		int count = dao.getReserVation(vo.getMno(),vo.getHno());
		int resCount = dao.getComment(vo.getMno(),vo.getHno());
		
		if(resCount > 1) {
			return "notadd";
		}
		if(count != 0) {
			System.out.println("호텔 예약 정보 존재");
			dao.registComment(vo);
			return "success";
		}
		
		return "fail";
	}

	
}
