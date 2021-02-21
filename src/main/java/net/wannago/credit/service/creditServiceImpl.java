package net.wannago.credit.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.wannago.credit.dao.creditDAO;
@Service
public class creditServiceImpl implements creditService {
	@Inject
	creditDAO dao;
	
	public static int getDateByInteger(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return Integer.parseInt(sdf.format(date));
	}
	public static String getDateByString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	@Override
	public void registReservation(String totalin, String totalout, int hno, int mno,String room) {
		
		int iyyyy = Integer.parseInt(totalin.substring(0, 4));
		int imm = Integer.parseInt(totalin.substring(5, 7));
		int idd = Integer.parseInt(totalin.substring(8, 10));
		
		String oyyyy = totalout.substring(0, 4);
		String omm = totalout.substring(5, 7);
		String odd = totalout.substring(8, 10);
		
		String endDate = oyyyy+omm+odd;
	
		Calendar cal = Calendar.getInstance();
		
		cal.set(iyyyy, imm - 1, idd);
		
		while (true) {
			
			System.out.println("예약시 저장될 시간: "+getDateByString(cal.getTime()));
			System.out.println("ENDDATE : "+Integer.parseInt(endDate));
			cal.add(Calendar.DATE, 1);
			dao.registReservation(getDateByString(cal.getTime()),hno,mno,room);
			if (getDateByInteger(cal.getTime()) > (Integer.parseInt(endDate) - 1)) {
				break;
			}
			
		}
		
		
		
		
		
		
		/* dao.registReservation(date, int mno); */
		
	}

}
