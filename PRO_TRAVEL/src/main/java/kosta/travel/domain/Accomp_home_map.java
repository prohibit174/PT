package kosta.travel.domain;

import org.springframework.web.multipart.MultipartFile;

//카풀,리퀘스트,유저 조인
public class Accomp_home_map {


	private String cor_region;
	private String cor_longi;
	private String cor_lati;
	private String tp_date;
	private String u_id;
	private String title;
	private String content;
	private String zoom;
	public String getCor_region() {
		return cor_region;
	}
	public void setCor_region(String cor_region) {
		this.cor_region = cor_region;
	}
	public String getCor_longi() {
		return cor_longi;
	}
	public void setCor_longi(String cor_longi) {
		this.cor_longi = cor_longi;
	}
	public String getCor_lati() {
		return cor_lati;
	}
	public void setCor_lati(String cor_lati) {
		this.cor_lati = cor_lati;
	}
	public String getTp_date() {
		return tp_date;
	}
	public void setTp_date(String tp_date) {
		this.tp_date = tp_date;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getZoom() {
		return zoom;
	}
	public void setZoom(String zoom) {
		this.zoom = zoom;
	}
	@Override
	public String toString() {
		return "Accomp_home_map [cor_region=" + cor_region + ", cor_longi=" + cor_longi + ", cor_lati=" + cor_lati
				+ ", tp_date=" + tp_date + ", u_id=" + u_id + ", title=" + title + ", content=" + content + ", zoom="
				+ zoom + "]";
	}
	public Accomp_home_map(String cor_region, String cor_longi, String cor_lati, String tp_date, String u_id,
			String title, String content, String zoom) {
		super();
		this.cor_region = cor_region;
		this.cor_longi = cor_longi;
		this.cor_lati = cor_lati;
		this.tp_date = tp_date;
		this.u_id = u_id;
		this.title = title;
		this.content = content;
		this.zoom = zoom;
	}	
	public Accomp_home_map() {}
	
}
