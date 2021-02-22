package net.wannago.place.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class PlaceVO {

	private int pno;
	private String pname;
	private String paddress;
	private String ptel;
	private String popentoclose;
	private String pgooglemap;
	private Date pregdate;
	private Date pupdatedate;
	private int plikecnt;
	private String pmainimg;
}
