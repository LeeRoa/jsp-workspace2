package chap07.model;

public class Pizza {
	
	private String pizza_id;
	private String pizza_name;
	private Integer pizza_price;
	private Integer avail_option;
	
	public String getPizza_id() {
		return pizza_id;
	}
	public void setPizza_id(String pizza_id) {
		this.pizza_id = pizza_id;
	}
	public String getPizza_name() {
		return pizza_name;
	}
	public void setPizza_name(String pizza_name) {
		this.pizza_name = pizza_name;
	}
	public Integer getPizza_price() {
		return pizza_price;
	}
	public void setPizza_price(Integer pizza_price) {
		this.pizza_price = pizza_price;
	}
	public Integer getAvail_option() {
		return avail_option;
	}
	public void setAvail_option(Integer avail_option) {
		this.avail_option = avail_option;
	}
}
