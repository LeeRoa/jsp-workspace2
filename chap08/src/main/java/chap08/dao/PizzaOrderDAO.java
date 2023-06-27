package chap08.dao;

import java.util.List;

import chap08.model.Pizza;
import chap08.model.PizzaOrder;

// DAO : Data Access Object, DB로부터 데이터를 조회해오는 기능들을 모아놓는 객체

// PizzaOrderDAO : PizzaOrder라는 기능을 구현하는데에 필요한 모든 데이터베이스 접근을 구현하는 곳
public interface PizzaOrderDAO {
	
	// 고를 수 있는 모든 피자들을 조회하는 메서드
	List<Pizza> getAllPizza();
	
	// 연습문제: 새로운 주문을 추가하는 메서드
	int insertOrder(PizzaOrder pizza_order);
//	void newOrder(PizzaOrder pizza_order);
	
	// DB로부터 해당 유저의 피자 주문 내역을 조회해서 리스트로 받아오는 메서드
	List<PizzaOrder> getCustomerOrders(String customer_id);	
	
	// 주문 정보를 조회하는 메서드
	List<PizzaOrder> getAllOrder();
	
	// 주문 번호로 해당 주문을 취소하는 메서드
	int deleteOrder(String order_id);
}

// PizzaOrderDAO dao = new PizzaOrderDAO_Impl();

// PizzaOrderDAO_Impl2