package kosta.travel.domain;

import java.util.Date;

public class BlogPostVO {
	private String bp_postnum;
	private String u_id;
	private String bp_contents;
	private Date bp_date;
	private String bp_img;
	
	public BlogPostVO(){}

	public String getBp_postnum() {
		return bp_postnum;
	}

	public void setBp_postnum(String bp_postnum) {
		this.bp_postnum = bp_postnum;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getBp_contents() {
		return bp_contents;
	}

	public void setBp_contents(String bp_contents) {
		this.bp_contents = bp_contents;
	}

	public Date getBp_date() {
		return bp_date;
	}

	public void setBp_date(Date bp_date) {
		this.bp_date = bp_date;
	}

	public String getBp_img() {
		return bp_img;
	}

	public void setBp_img(String bp_img) {
		this.bp_img = bp_img;
	}
	
	
	

}
