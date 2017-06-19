package kosta.travel.domain;

import org.springframework.web.multipart.MultipartFile;

public class BlogVO {
	private int b_id;
	private String b_title;
	private String u_name;
	private String b_introdution;
	private String u_img;
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


	public String getB_instruction() {
		return b_introdution;
	}


	public void setB_instruction(String b_instruction) {
		this.b_introdution = b_introdution;
	}


	public String getU_img() {
		return u_img;
	}


	public void setU_img(String u_img) {
		this.u_img = u_img;
	}


	public MultipartFile getFile2() {
		return file2;
	}


	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
	}

	
	
	
	

}
