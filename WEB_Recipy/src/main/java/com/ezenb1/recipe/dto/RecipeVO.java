package com.ezenb1.recipe.dto;

import java.sql.Timestamp;

public class RecipeVO {

	private Integer rnum;  // 레시피 등록 번호
	private String id; // 회원 아이디
	private String subject; // 레시피 제목
	private String content; // 레시피 내용
	private Timestamp indate; // 글쓴 날짜?
	private Integer views; //조회수
	private Integer  time; // 조리시간
	private Integer likes; // 추천수
	private Integer  type; //  종류별
	private Integer  ing; // 재료별
	private Integer theme; // 테마별
	private Integer rec; // 추전
	private Integer report; // 경고?받은수?
	private String thumbnail; // 썸네일 이미지
	
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public Integer getRnum() {
		return rnum;
	}
	public void setRnum(Integer rnum) {
		this.rnum = rnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public Integer getLikes() {
		return likes;
	}
	public void setLikes(Integer likes) {
		this.likes = likes;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getIng() {
		return ing;
	}
	public void setIng(Integer ing) {
		this.ing = ing;
	}
	public Integer getTheme() {
		return theme;
	}
	public void setTheme(Integer theme) {
		this.theme = theme;
	}
	public Integer getRec() {
		return rec;
	}
	public void setRec(Integer rec) {
		this.rec = rec;
	}
	public Integer getReport() {
		return report;
	}
	public void setReport(Integer report) {
		this.report = report;
	}
	
	
	
}
