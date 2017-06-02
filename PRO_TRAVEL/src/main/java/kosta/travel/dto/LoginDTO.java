package kosta.travel.dto;

//�뜲�씠�꽣瑜� �닔吏묓븯�뒗 �슜�룄
public class LoginDTO {
	private String u_id;
	private String u_pwd;
	private boolean useCookie;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "LoginDTO [u_id=" + u_id + ", u_pwd=" + u_pwd + ", useCookie=" + useCookie + "]";
	}
	

	
	
}
