package net.wannago.hotel.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class HotelVO {

	private int hno;
	private String hname;
	private String hinfo;
	private String haddress;
	private String htel;
	private String email;
	private String hopentoclose;
	private String googlemap;
	private String hlikecnt;
	private Date hregdate;
	private Date hupdatedate;
	private String hgrade;
	private double hscore;
	private int hprice;
	private int hprimaryprice;
	private String hmainimg;
	private String hdetailimg;
	
}
