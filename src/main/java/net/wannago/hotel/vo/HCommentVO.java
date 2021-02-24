package net.wannago.hotel.vo;

import java.util.Date;

import lombok.Data;

@Data
public class HCommentVO {
	private int cno;
	private int hno;
	private int mno;
	private String mname;
	private String ctext;
	private Date regDate;
	
}
