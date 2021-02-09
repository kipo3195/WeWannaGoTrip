package net.wannago.cafRes.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CaResVO {
	
	private int crno;
	private String crname;
	private String crRecmenu;
	private String craddress;
	private String crtel;
	private String cremail;
	private String cropentoclose;
	private String crgooglemap;
	private Date crregdate;
	private Date crupdatedate;
	private int crlikecnt;
	private String CorR;
	private String mainimg;

}
