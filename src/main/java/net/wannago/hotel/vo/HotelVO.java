package net.wannago.hotel.vo;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class HotelVO {

	private int hno;
	private String hname;
	private String hinfo;
	private String haddress;
	private String htel;
	private String hemail;
	private String hcheckin;
	private String hcheckout;
	private String hgooglemap;
	private String hlikecnt;
	private Date hregdate;
	private Date hupdatedate;
	private String hgrade;
	private double hscore;
	private int hprice;
	private int hprimaryprice;
	private String hmainimg;
	private String hdetailimg;
	private String hfacility;
	private double hwedo;
	private double hkyungdo;
	
	private List<String> file;
	
}
