package kosta.travel.domain;

import org.springframework.web.multipart.MultipartFile;

public class Carpool_ListVO {
	private int c_num;
	private String u_id;
	private String start_point;
	private String dest_point;
	private String way_point;
	private int c_price;
	private int c_year;
	private int c_month;
	private int c_date;
	private String c_hour;
	private int c_minute;
	private int c_person;
	private String u_pwd;
	private String u_name;
	private String u_birth;
	private String u_sex;
	private String u_address;
	private String u_job;
	private String u_lang; 
	private String u_religion;
	private String u_license;
	private String u_img;
	private String u_style;
	private MultipartFile img_file;
	
	public Carpool_ListVO(){}
	public Carpool_ListVO(int c_num, String u_id, String start_point, String dest_point, String way_point, int c_price,
			int c_year, int c_month, int c_date, String c_hour, int c_minute, int c_person, String u_pwd, String u_name,
			String u_birth, String u_sex, String u_address, String u_job, String u_lang, String u_religion,
			String u_license, String u_img, String u_style, MultipartFile img_file) {
		super();
		this.c_num = c_num;
		this.u_id = u_id;
		this.start_point = start_point;
		this.dest_point = dest_point;
		this.way_point = way_point;
		this.c_price = c_price;
		this.c_year = c_year;
		this.c_month = c_month;
		this.c_date = c_date;
		this.c_hour = c_hour;
		this.c_minute = c_minute;
		this.c_person = c_person;
		this.u_pwd = u_pwd;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_sex = u_sex;
		this.u_address = u_address;
		this.u_job = u_job;
		this.u_lang = u_lang;
		this.u_religion = u_religion;
		this.u_license = u_license;
		this.u_img = u_img;
		this.u_style = u_style;
		this.img_file = img_file;
	}
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getStart_point() {
		return start_point;
	}
	public void setStart_point(String start_point) {
		this.start_point = start_point;
	}
	public String getDest_point() {
		return dest_point;
	}
	public void setDest_point(String dest_point) {
		this.dest_point = dest_point;
	}
	public String getWay_point() {
		return way_point;
	}
	public void setWay_point(String way_point) {
		this.way_point = way_point;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	public int getC_year() {
		return c_year;
	}
	public void setC_year(int c_year) {
		this.c_year = c_year;
	}
	public int getC_month() {
		return c_month;
	}
	public void setC_month(int c_month) {
		this.c_month = c_month;
	}
	public int getC_date() {
		return c_date;
	}
	public void setC_date(int c_date) {
		this.c_date = c_date;
	}
	public String getC_hour() {
		return c_hour;
	}
	public void setC_hour(String c_hour) {
		this.c_hour = c_hour;
	}
	public int getC_minute() {
		return c_minute;
	}
	public void setC_minute(int c_minute) {
		this.c_minute = c_minute;
	}
	public int getC_person() {
		return c_person;
	}
	public void setC_person(int c_person) {
		this.c_person = c_person;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_birth() {
		return u_birth;
	}
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_job() {
		return u_job;
	}
	public void setU_job(String u_job) {
		this.u_job = u_job;
	}
	public String getU_lang() {
		return u_lang;
	}
	public void setU_lang(String u_lang) {
		this.u_lang = u_lang;
	}
	public String getU_religion() {
		return u_religion;
	}
	public void setU_religion(String u_religion) {
		this.u_religion = u_religion;
	}
	public String getU_license() {
		return u_license;
	}
	public void setU_license(String u_license) {
		this.u_license = u_license;
	}
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
	public String getU_style() {
		return u_style;
	}
	public void setU_style(String u_style) {
		this.u_style = u_style;
	}
	public MultipartFile getImg_file() {
		return img_file;
	}
	public void setImg_file(MultipartFile img_file) {
		this.img_file = img_file;
	}
	
		
	
	
	
	
	
	
	
	
}
