package kosta.travel.domain;

import java.io.Serializable;
import java.util.List;

public class RouteList implements Serializable{

	private static final long serialVersionUID = 1L;
	private String id;
	private String title;
	private String eventdate;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEventdate() {
		return eventdate;
	}
	public void setEventdate(String eventdate) {
		this.eventdate = eventdate;
	}
	
	
	
	
}
