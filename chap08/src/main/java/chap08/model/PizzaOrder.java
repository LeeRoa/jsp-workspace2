package chap08.model;

public class PizzaOrder {
	
	// Model 클래스의 속성이름들을 DB테이블의 컬럼명과 일치시키는 것이 좋다.
	String order_id; // 주문번호 (PK)
	String customer_id; // 주문자의 회원번호 (FK)
	String pizza_id; // 피자의 정보 (FK)
	String address; // 주소
	Integer pizza_option; // 옵션값
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getPizza_id() {
		return pizza_id;
	}
	public void setPizza_id(String pizza_id) {
		this.pizza_id = pizza_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPizza_option() {
		return pizza_option;
	}
	public void setPizza_option(Integer pizza_option) {
		this.pizza_option = pizza_option;
	}
}
