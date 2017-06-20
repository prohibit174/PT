package kosta.travel.domain;

public class AccompanyRequestVO {

   public int getAcr_num() {
      return acr_num;
   }

   public void setAcr_num(int acr_num) {
      this.acr_num = acr_num;
   }

   public String getAcr_ox() {
      return acr_ox;
   }

   public void setAcr_ox(String acr_ox) {
      this.acr_ox = acr_ox;
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

   public AccompanyRequestVO(int acr_num, String acr_ox, int accomp_group_num, String u_id) {
      super();
      this.acr_num = acr_num;
      this.acr_ox = acr_ox;
      this.accomp_group_num = accomp_group_num;
      this.u_id = u_id;
   }

   private int acr_num;
   private String acr_ox;
   private int accomp_group_num;
   private String u_id;

   public AccompanyRequestVO() {
   }
}