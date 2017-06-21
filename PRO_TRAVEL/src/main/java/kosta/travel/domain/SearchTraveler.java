package kosta.travel.domain;

import java.util.List;

public class SearchTraveler {
	private String city;
	private String sdate;
	private String edate;
	private String u_id;
	private List<SearchTraveler> trav;
	
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	public List<SearchTraveler> getTrav() {
		return trav;
	}
	public void setTrav(List<SearchTraveler> trav) {
		this.trav = trav;
	}
	@Override
	public String toString() {
		return "SearchTraveler [city=" + city + ", sdate=" + sdate + ", edate=" + edate + ", u_id=" + u_id + ", trav="
				+ trav + "]";
	}
	
	
	
	
	
}
