package net.wannago.member.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int mno;
	private String mid;
	private String mpw;
	private String mname;
	private String memail;
	private Date regdate;
	private Date updatedate;
}
