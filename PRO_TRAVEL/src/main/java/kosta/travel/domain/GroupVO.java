package kosta.travel.domain;

import java.util.List;

public class GroupVO {
	
	public GroupVO(){}
	




	@Override
	public String toString() {
		return "GroupVO [accomp_group_num=" + accomp_group_num + ", u_id=" + u_id + ", max_people_num=" + max_people_num
				+ ", cor_region=" + cor_region + ", tp_date=" + tp_date + ", groupVolist=" + groupVolist
				+ ", current_num=" + current_num + "]";
	}



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





	public String getCor_region() {
		return cor_region;
	}





	public void setCor_region(String cor_region) {
		this.cor_region = cor_region;
	}





	public String getTp_date() {
		return tp_date;
	}





	public void setTp_date(String tp_date) {
		this.tp_date = tp_date;
	}





	public List<GroupVO> getGroupVolist() {
		return groupVolist;
	}





	public void setGroupVolist(List<GroupVO> groupVolist) {
		this.groupVolist = groupVolist;
	}





	public int getCurrent_num() {
		return current_num;
	}





	public void setCurrent_num(int current_num) {
		this.current_num = current_num;
	}



	public GroupVO(int accomp_group_num, String u_id, int max_people_num, String cor_region, String tp_date,
			List<GroupVO> groupVolist, int current_num) {
		super();
		this.accomp_group_num = accomp_group_num;
		this.u_id = u_id;
		this.max_people_num = max_people_num;
		this.cor_region = cor_region;
		this.tp_date = tp_date;
		this.groupVolist = groupVolist;
		this.current_num = current_num;
	}



	private int accomp_group_num;
  	private String u_id;
  	private int max_people_num;
  	private String cor_region;
  	private String tp_date;
  	private List<GroupVO> groupVolist;
  	private int current_num;
  	
  	
  	

}
