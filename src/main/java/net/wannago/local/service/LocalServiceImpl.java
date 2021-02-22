package net.wannago.local.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.util.Criteria;
import net.koreate.util.PageMaker;
import net.wannago.admin.vo.SearchVO;
import net.wannago.hotel.dao.HotelDAO;
import net.wannago.hotel.vo.HotelPriceVO;
import net.wannago.hotel.vo.HotelRoomVO;
import net.wannago.hotel.vo.HotelVO;

@Service
public class LocalServiceImpl implements LocalService {

	@Inject
	HotelDAO dao;

	@Override
	public Map<String, String> getRPrice() {
		Map<String, String> priceMap = new HashMap<String, String>();

		return priceMap;
	}

	@Override
	public PageMaker getPageMaker(int page) {
		Criteria cri = new Criteria(page, 20);
		int totalCount = dao.listCount();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		return pageMaker;
	}

	@Override
	public List<HotelVO> readList(Criteria cri) {
		return dao.hotellist(cri);
	}

	@Override
	public HotelVO getHotelVO(int hno) {
		return dao.getHotel(hno);
	}

	@Override
	public List<String> getHotelDetailImg(int hno) {
		System.out.println("이거되나?? : " + dao.getDetailImage(hno));
		return dao.getDetailImage(hno);
	}

	@Override
	public List<HotelVO> searchInfo(SearchVO vo) {

		List<HotelVO> hotel = null;
		switch (vo.getCategory()) {

		case "호텔":

			// 이름으로 비교
			if (vo.getSearchOption().equals("이름")) {
				String option = "hname";
				hotel = dao.hotelSearch(option, vo.getKeyword());
				return hotel;
			}

			break;
		case "카페&식당":
			System.out.println("카페 및 식당");

			break;
		case "관광지":
			System.out.println("관광지");

			break;
		}

		vo.getKeyword();
		vo.getSearchOption();

		return hotel;
	}

	@Override
	public HotelVO HotelInfo(int hno) {

		return dao.getHotel(hno);
	}

	@Override
	public Map<String, Integer> hotelPrice(double a, int hno, int plus) {
		Map<String, Integer> hotelPrice = new HashMap<>();
		// 호텔정보가져와서
		HotelVO vo = dao.getHotel(hno);
		// 몇성급인지 확인하고
		HotelPriceVO pricevo = dao.getGradePrice(vo.getHgrade());
		// 가격객체 가져와서 확인

		int luxury = (int) (pricevo.getHpriprice() * a * pricevo.getLuxury());
		int delux = (int) (pricevo.getHpriprice() * a * pricevo.getDelux());
		int doubler = (int) (pricevo.getHpriprice() * a * pricevo.getDoubler());
		int business = (int) (pricevo.getHpriprice() * a * pricevo.getBusiness());

		hotelPrice.put("luxury", luxury);
		hotelPrice.put("delux", delux);
		hotelPrice.put("doubler", doubler);
		hotelPrice.put("business", business);
		hotelPrice.put("plus", plus); // 날짜

		return hotelPrice;
	}

	public static int getDateByInteger(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return Integer.parseInt(sdf.format(date));
	}

	public static String getDateByString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}

	@Override
	public Map<String, Object> getBookableRoom(HotelRoomVO vo) {
		int enddate = 0;

		// 체크인 날짜 넣어둘 배열 사용
		ArrayList<String> bookabledate = new ArrayList<String>();

		// yyyymmdd 형식 포맷팅하기

		System.out.println("odd : " + vo.getOdd());
		if (vo.getOdd() < 10) {
			String odd = "0" + vo.getOdd();
			if (vo.getOmm() < 10) {
				String omm = "0" + vo.getOmm();
				enddate = Integer.parseInt(vo.getOyyyy() + omm + odd);
			} else {
				enddate = Integer.parseInt(vo.getOyyyy() + vo.getOmm() + odd);
			}
		} else {
			if (vo.getOmm() < 10) {
				String omm = "0" + vo.getOmm();
				enddate = Integer.parseInt(vo.getOyyyy() + omm + vo.getOdd());
			} else {
				enddate = Integer.parseInt(vo.getOyyyy() + "" + vo.getOmm() + "" + vo.getOdd());
			}
		}

		//
		// 체크 인 - 체크아웃 날짜를 배열에 담기
		Calendar cal = Calendar.getInstance();
		cal.set(vo.getIyyyy(), vo.getImm() - 1, vo.getIdd());
		System.out.println("calTime : " + cal.getTime());
		System.out.println("endDate : " + enddate);
		while (true) {
			System.out.println(getDateByString(cal.getTime()));
			bookabledate.add(getDateByString(cal.getTime()));
			cal.add(Calendar.DATE, 1);
			if (getDateByInteger(cal.getTime()) > enddate - 1) {
				break;
			}
		}

		/*
		 * Map<String,Integer> luxmap = new HashMap<String, Integer>();
		 * Map<String,Integer> demap = new HashMap<String, Integer>();
		 * Map<String,Integer> doumap = new HashMap<String, Integer>();
		 * Map<String,Integer> busimap = new HashMap<String, Integer>();
		 */
		//key값이 방 - value는 arrayList -> 해당되는 날짜에 count값을 순서대로 넣기 위함.
		Map<String, Object> map = new HashMap<String, Object>();
		
		ArrayList<Integer> reserlist1 = new ArrayList<>();
		ArrayList<Integer> reserlist2 = new ArrayList<>();
		ArrayList<Integer> reserlist3 = new ArrayList<>();
		ArrayList<Integer> reserlist4 = new ArrayList<>();
		ArrayList<String> reserlist5 = new ArrayList<>();
		
		System.out.println(bookabledate.size());
		for (int i = 0; i < bookabledate.size(); i++) {

			reserlist1.add(dao.getbookableLux("lux", bookabledate.get(i), vo.getHno()));
			reserlist2.add(dao.getbookableLux("de", bookabledate.get(i), vo.getHno()));
			reserlist3.add(dao.getbookableLux("dou", bookabledate.get(i), vo.getHno()));
			reserlist4.add(dao.getbookableLux("busi", bookabledate.get(i), vo.getHno()));
			reserlist5.add(bookabledate.get(i));
			/*
			 * map.put("lux",dao.getbookableLux("lux",reserlist.add(bookabledate.get(i),vo.
			 * getHno())));
			 * map.put("de",dao.getbookableLux("lux",bookabledate.get(i),vo.getHno()));
			 * map.put("dou",dao.getbookableLux("lux",bookabledate.get(i),vo.getHno()));
			 * map.put("busi",dao.getbookableLux("lux",bookabledate.get(i),vo.getHno()));
			 * 
			 * 
			 * luxmap.put(bookabledate.get(i),dao.getbookableLux("lux",bookabledate.get(i),
			 * vo.getHno()));
			 * System.out.println("date:"+bookabledate.get(i)+" | hno:"+vo.getHno());
			 * demap.put(bookabledate.get(i),dao.getbookableLux("del",bookabledate.get(i),vo
			 * .getHno()));
			 * doumap.put(bookabledate.get(i),dao.getbookableLux("dou",bookabledate.get(i),
			 * vo.getHno()));
			 * busimap.put(bookabledate.get(i),dao.getbookableLux("busi",bookabledate.get(i)
			 * ,vo.getHno()));
			 */
		}
		map.put("lux", reserlist1);
		map.put("de", reserlist2);
		map.put("dou", reserlist3);
		map.put("busi", reserlist4);
		map.put("date",reserlist5);
		/*
		 * System.out.println("맵 여기"); System.out.println("lux : "+luxmap);
		 * System.out.println("de : "+demap); System.out.println("dou : "+doumap);
		 * System.out.println("busi : "+busimap);
		 * 
		 */

		return map;
	}

	//좋아요 구현. 처음눌린것인지 이전에 눌린적 있는지 확인 결과값을 1,2 로 리턴
	@Override
	public Map<String, Object> likeCnt(int hno, int mno) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		int result = dao.boolexist(hno,mno);
		System.out.println("결과 존재 유무 : " +result);
		
		if(result == 1) {
		//이전에 누른적 있다.
			dao.deleteLikecount(hno,mno);
			dao.minusLikecount(hno);
			System.out.println("누른적 있다");
			map.put("result", "false");
			
		}else {
		//누른적 없다.
			dao.registerLike(hno,mno);
			dao.plusLikecount(hno);
			System.out.println("처음 누른다");
			map.put("result", "true");
		}
		
		int likecnt = dao.hotellikecnt(hno);
		map.put("likecnt", likecnt);
		
		return map;
	}

	@Override
	public List<HotelVO> orderByPrice() {
		List<HotelVO> VO = dao.orderByPrice();
		
		
		return VO;
	}

	@Override
	public List<HotelVO> orderByReg() {
		List<HotelVO> VO = dao.orderByReg();
		return VO;
	}

	@Override
	public List<HotelVO> orderByLike() {
		List<HotelVO> VO = dao.orderByLike();
		return VO;
	}

}
