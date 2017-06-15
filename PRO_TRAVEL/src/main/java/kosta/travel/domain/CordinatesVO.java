package kosta.travel.domain;

public class CordinatesVO {
   
   public CordinatesVO(){}
   

   public String getCor_region() {
      return cor_region;
   }
   public void setCor_region(String cor_region) {
      this.cor_region = cor_region;
   }
   public double getCor_longi() {
      return cor_longi;
   }
   public void setCor_longi(double cor_longi) {
      this.cor_longi = cor_longi;
   }
   public double getCor_lati() {
      return cor_lati;
   }
   public void setCor_lati(double cor_lati) {
      this.cor_lati = cor_lati;
   }
   public int getcor_zoom_level() {
      return cor_zoom_level;
   }
   public void setcor_zoom_level(int cor_zoom_level) {
      this.cor_zoom_level = cor_zoom_level;
   }


   public CordinatesVO(String cor_region, double cor_longi, double cor_lati, int cor_zoom_level) {
      super();
      this.cor_region = cor_region;
      this.cor_longi = cor_longi;
      this.cor_lati = cor_lati;
      this.cor_zoom_level = cor_zoom_level;
   }


   private String cor_region;
   private double cor_longi;
   private double cor_lati;
   private int cor_zoom_level;
   
}