package net.wannago.hotel.vo;

import java.util.Date;

import lombok.Data;

@Data //관심호텔 등록 
public class interHotelVO {
	
	private int ino;
	private int hno;
	private int mno;
	private Date regdate;

}
