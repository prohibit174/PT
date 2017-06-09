package kosta.travel.domain;

public class SearchTraveler {
	private String city;
	private String sdate;
	private String edate;
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
	@Override
	public String toString() {
		return "SearchTraveler [city=" + city + ", sdate=" + sdate + ", edate=" + edate + "]";
	}

	
	
	
}
