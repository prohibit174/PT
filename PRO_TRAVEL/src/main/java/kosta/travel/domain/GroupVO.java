package kosta.travel.domain;

import java.util.List;

public class GroupVO {
	
	public GroupVO(){}
	
	public GroupVO(int accomp_group_num, String u_id, int max_people_num, String cOR_REGION, String tP_DATE) {
		super();
		this.accomp_group_num = accomp_group_num;
		this.u_id = u_id;
		this.max_people_num = max_people_num;
		COR_REGION = cOR_REGION;
		TP_DATE = tP_DATE;
	}
	
	
	
	private int accomp_group_num;
  	private String u_id;
  	private int max_people_num;
  	private String COR_REGION;
  	private String TP_DATE;
  	private List<GroupVO> groupVolist;
  	
  	
  	
	public int getAccomp_group_num() {
		return accomp_group_num;
	}

	public void setAccomp_group_num(int accomp_group_num) {
		this.accomp_group_num = accomp_group_num;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public int getMax_people_num() {
		return max_people_num;
	}

	public void setMax_people_num(int max_people_num) {
		this.max_people_num = max_people_num;
	}

	public String getCOR_REGION() {
		return COR_REGION;
	}

	public void setCOR_REGION(String cOR_REGION) {
		COR_REGION = cOR_REGION;
	}

	public String getTP_DATE() {
		return TP_DATE;
	}

	public void setTP_DATE(String tP_DATE) {
		TP_DATE = tP_DATE;
	}

	
	public List<GroupVO> getGroupVolist() {
		return groupVolist;
	}

	public void setGroupVolist(List<GroupVO> groupVolist) {
		this.groupVolist = groupVolist;
	}

	@Override
	public String toString() {
		return "GroupVO [accomp_group_num=" + accomp_group_num + ", u_id=" + u_id + ", max_people_num=" + max_people_num
				+ ", COR_REGION=" + COR_REGION + ", TP_DATE=" + TP_DATE + ", groupVolist=" + groupVolist + "]";
	}

	
  	


}
