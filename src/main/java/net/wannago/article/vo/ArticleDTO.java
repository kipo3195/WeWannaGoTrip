package net.wannago.article.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ArticleDTO {

	private int id;
	private String regDate;
	private String updateDate;
	private String title;
	private String body;
}
