package net.wannago.hotel.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class HotelVO {

	private int hno;
	private String hname;
	private String hinfo;
	private String haddress;
	private Date hregistdate;
	private int hgrade;
	private int hscore;
	private int hprice;
	
}
