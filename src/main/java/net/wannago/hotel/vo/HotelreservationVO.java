package net.wannago.hotel.vo;

import java.util.Date;

import lombok.Data;

@Data
public class HotelreservationVO {

	
	private int rnumber;
	private int hno;
	private int mno;
	private String hname;
	private String grade;
	private Date rdate;
	private Date resregdate;
	
	
	
}
