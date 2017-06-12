package kosta.travel.domain;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class WebCrolling {

	public static void main(String[] args) {
		try {
			Document doc = Jsoup.connect("http://www.alamo.co.kr/rent/carInfo.php?vendor=AL").get();
			Elements contents = doc.select("div.body_contents");
			String text = contents.text();
			System.out.println(text);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
