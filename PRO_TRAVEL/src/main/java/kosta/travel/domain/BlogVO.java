package kosta.travel.domain;

import org.springframework.web.multipart.MultipartFile;

public class BlogVO {
	private int b_id;
	private String b_title;
	private String u_name;
	private String b_introduction;
	private String b_img;
	private MultipartFile file2;
	 
	 
	public BlogVO(){}


	public int getB_id() {
		return b_id;
	}


	public void setB_id(int b_id) {
		this.b_id = b_id;
	}


	public String getB_title() {
		return b_title;
	}


	public void setB_title(String b_title) {
		this.b_title = b_title;
	}


	public String getU_name() {
		return u_name;
	}


	public void setU_name(String u_name) {
		this.u_name = u_name;
	}


	public String getB_introduction() {
		return b_introduction;
	}


	public void setB_introduction(String b_introduction) {
		this.b_introduction = b_introduction;
	}


	public String getB_img() {
		return b_img;
	}


	public void setB_img(String b_img) {
		this.b_img = b_img;
	}


	public MultipartFile getFile2() {
		return file2;
	}


	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}


	@Override
	public String toString() {
		return "BlogVO [b_id=" + b_id + ", b_title=" + b_title + ", u_name=" + u_name + ", b_introduction="
				+ b_introduction + ", b_img=" + b_img + ", file2=" + file2 + "]";
	}


	
	

	
	
	

}
