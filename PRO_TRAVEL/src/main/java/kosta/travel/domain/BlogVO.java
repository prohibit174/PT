package kosta.travel.domain;

import org.springframework.web.multipart.MultipartFile;

public class BlogVO {
   private int b_id;
   private String b_title;
   private String u_name;
   private String b_img;
   private String u_id;
   private String b_introduction;
   private MultipartFile file2;
    
    
   public BlogVO(){}


public BlogVO(int b_id, String b_title, String u_name, String b_img, String u_id, String b_introduction,
		MultipartFile file2) {
	super();
	this.b_id = b_id;
	this.b_title = b_title;
	this.u_name = u_name;
	this.b_img = b_img;
	this.u_id = u_id;
	this.b_introduction = b_introduction;
	this.file2 = file2;
}


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


public String getB_img() {
	return b_img;
}


public void setB_img(String b_img) {
	this.b_img = b_img;
}


public String getU_id() {
	return u_id;
}


public void setU_id(String u_id) {
	this.u_id = u_id;
}


public String getB_introduction() {
	return b_introduction;
}


public void setB_introduction(String b_introduction) {
	this.b_introduction = b_introduction;
}


public MultipartFile getFile2() {
	return file2;
}


public void setFile2(MultipartFile file2) {
	this.file2 = file2;
}


@Override
public String toString() {
	return "BlogVO [b_id=" + b_id + ", b_title=" + b_title + ", u_name=" + u_name + ", b_img=" + b_img + ", u_id="
			+ u_id + ", b_introduction=" + b_introduction + ", file2=" + file2 + "]";
}


  

}