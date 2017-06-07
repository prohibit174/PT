package kosta.travel.domain;

import java.util.Arrays;

public class ProductVO {
	private String p_num;
	private String u_id;
	private String p_img;
	private String p_detail;
	private String p_price;
	private String p_name;
	private String p_date;
	private String p_ox;
	
	public ProductVO(){}
	

	public ProductVO(String p_num, String u_id, String p_img, String p_detail, String p_price, String p_name,
			String p_date, String p_ox) {
		super();
		this.p_num = p_num;
		this.u_id = u_id;
		this.p_img = p_img;
		this.p_detail = p_detail;
		this.p_price = p_price;
		this.p_name = p_name;
		this.p_date = p_date;
		this.p_ox = p_ox;
	}



	public String getP_num() {
		return p_num;
	}

	public void setP_num(String p_num) {
		this.p_num = p_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public String getP_ox() {
		return p_ox;
	}

	public void setP_ox(String p_ox) {
		this.p_ox = p_ox;
	}


	@Override
	public String toString() {
		return "ProductVO [p_num=" + p_num + ", u_id=" + u_id + ", p_img=" + p_img + ", p_detail=" + p_detail
				+ ", p_price=" + p_price + ", p_name=" + p_name + ", p_date=" + p_date + ", p_ox=" + p_ox + "]";
	}

	
}
