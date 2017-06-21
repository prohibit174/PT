package kosta.travel.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BlogPostVO {
	private int bp_postnum;
	private String u_id;
	private String bp_contents;
	private Date bp_date;
	private String bp_img;
	private MultipartFile file3;
	
	public BlogPostVO(){}

	public BlogPostVO(int bp_postnum, String u_id, String bp_contents, Date bp_date, String bp_img,
			MultipartFile file3) {
		super();
		this.bp_postnum = bp_postnum;
		this.u_id = u_id;
		this.bp_contents = bp_contents;
		this.bp_date = bp_date;
		this.bp_img = bp_img;
		this.file3 = file3;
	}

	public int getBp_postnum() {
		return bp_postnum;
	}

	public void setBp_postnum(int bp_postnum) {
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

	public MultipartFile getFile3() {
		return file3;
	}

	public void setFile3(MultipartFile file3) {
		this.file3 = file3;
	}

	@Override
	public String toString() {
		return "BlogPostVO [bp_postnum=" + bp_postnum + ", u_id=" + u_id + ", bp_contents=" + bp_contents + ", bp_date="
				+ bp_date + ", bp_img=" + bp_img + ", file3=" + file3 + "]";
	}

	
	

}
