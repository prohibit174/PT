package kosta.travel.domain;

public class DeclareVO {
	private int d_num;
	private String u_id;
	private String d_reported;
	private String d_big;
	private String d_small;
	private String d_content;
	private String d_file;
	
	//reported의 id값 조인하기 위해 변수선언
	private String d_reported_id;
	private String d_reported_name;
	private String d_reported_img;
	
	
	public DeclareVO(){}


	public DeclareVO(int d_num, String u_id, String d_reported, String d_big, String d_small, String d_content,
			String d_file, String d_reported_id, String d_reported_name, String d_reported_img) {
		super();
		this.d_num = d_num;
		this.u_id = u_id;
		this.d_reported = d_reported;
		this.d_big = d_big;
		this.d_small = d_small;
		this.d_content = d_content;
		this.d_file = d_file;
		this.d_reported_id = d_reported_id;
		this.d_reported_name = d_reported_name;
		this.d_reported_img = d_reported_img;
	}


	public int getD_num() {
		return d_num;
	}


	public void setD_num(int d_num) {
		this.d_num = d_num;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getD_reported() {
		return d_reported;
	}


	public void setD_reported(String d_reported) {
		this.d_reported = d_reported;
	}


	public String getD_big() {
		return d_big;
	}


	public void setD_big(String d_big) {
		this.d_big = d_big;
	}


	public String getD_small() {
		return d_small;
	}


	public void setD_small(String d_small) {
		this.d_small = d_small;
	}


	public String getD_content() {
		return d_content;
	}


	public void setD_content(String d_content) {
		this.d_content = d_content;
	}


	public String getD_file() {
		return d_file;
	}


	public void setD_file(String d_file) {
		this.d_file = d_file;
	}


	public String getD_reported_id() {
		return d_reported_id;
	}


	public void setD_reported_id(String d_reported_id) {
		this.d_reported_id = d_reported_id;
	}


	public String getD_reported_name() {
		return d_reported_name;
	}


	public void setD_reported_name(String d_reported_name) {
		this.d_reported_name = d_reported_name;
	}


	public String getD_reported_img() {
		return d_reported_img;
	}


	public void setD_reported_img(String d_reported_img) {
		this.d_reported_img = d_reported_img;
	}

	
	
	
}
