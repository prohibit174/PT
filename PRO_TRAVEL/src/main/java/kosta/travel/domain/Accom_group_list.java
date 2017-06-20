package kosta.travel.domain;

public class Accom_group_list {

   public int getAccomp_list_num() {
      return accomp_list_num;
   }

   public void setAccomp_list_num(int accomp_list_num) {
      this.accomp_list_num = accomp_list_num;
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

   public Accom_group_list(int accomp_list_num, int accomp_group_num, String u_id) {
      super();
      this.accomp_list_num = accomp_list_num;
      this.accomp_group_num = accomp_group_num;
      this.u_id = u_id;
   }

   private int accomp_list_num;
   private int accomp_group_num;
   private String u_id;

   public Accom_group_list() {
   }
}