package chap08.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap08.model.Pizza;
import chap08.model.PizzaOrder;

public class PizzaOrderDAO_Impl implements PizzaOrderDAO {

	@Override
	public List<Pizza> getAllPizza() {
		List<Pizza> pizzas = new ArrayList<>();
		String sql = "SELECT * FROM pizza";
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				) {

			while (rs.next()) {
				Pizza pizza = new Pizza();

				pizza.setPizza_id(rs.getString("pizza_id"));
				pizza.setPizza_name(rs.getString("pizza_name"));
				pizza.setPizza_price(rs.getInt("pizza_price"));
				pizza.setAvail_option(rs.getInt("avail_option"));

				pizzas.add(pizza);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pizzas;
	}
	
	@Override
	public List<PizzaOrder> getCustomerOrders(String order_id) {
	    List<PizzaOrder> pizza_orders = new ArrayList<>();

	    String sql = "select * from pizza_order where order_id=?";
	    String sql2 = "select * from pizza_order where customer_id=?";
	    try (
	        Connection conn = DBConnection.getConnection();
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	    ) {
	        pstmt.setInt(1, Integer.parseInt(order_id));

	        try (
	        		ResultSet rs = pstmt.executeQuery();
	        		PreparedStatement pstmt2 = conn.prepareStatement(sql2);	
	        	) {
	        	rs.next();
	        	
	        	pstmt2.setString(1, rs.getString("customer_id"));
	        	
	        	try (
	        		ResultSet rs2 = pstmt2.executeQuery();
	        	) {
	        		while(rs2.next()) {
	        			PizzaOrder pizza_order = new PizzaOrder();
	        			
	        			pizza_order.setOrder_id(rs2.getString("order_id"));
	        			pizza_order.setCustomer_id(rs2.getString("customer_id"));
	        			pizza_order.setPizza_id(rs2.getString("pizza_id"));
	        			pizza_order.setAddress(rs2.getString("address"));
	        			pizza_order.setPizza_option(rs2.getInt("pizza_option"));
	        			
	        			pizza_orders.add(pizza_order);
	        		}
	        	}
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return pizza_orders;
	}


	@Override
	public int deleteOrder(String order_id) {
		return 0;
	}

	@Override
	public int insertOrder(PizzaOrder pizza_order) {
		String sql = "SELECT order_id.nextval AS order_id from dual";

		// insert 시
		// 나중에 해당 테이블에 컬럼이 추가되는 상황에 대비해 모든 컬럼을 적어두는 것이 좋다.
		String sql2 = "INSERT INTO PIZZA_ORDER(order_id, customer_id, pizza_id, address, pizza_option) "
				+ "VALUES (?, ?, ?, ?, ?)";
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				PreparedStatement pstmt2 = conn.prepareStatement(sql2);
				ResultSet rs = pstmt.executeQuery();
				) {
			// 시퀀스로 꺼낸 다음 ID값을 Model 객체에 추가하여 
			// 다음 리다이렉트의 파라미터로 사용할 수 있도록 한다.
			rs.next();

			pizza_order.setOrder_id(rs.getString(1));

			pstmt2.setString(1, pizza_order.getOrder_id());
			pstmt2.setString(2, pizza_order.getCustomer_id());
			pstmt2.setString(3, pizza_order.getPizza_id());
			pstmt2.setString(4, pizza_order.getAddress());
			pstmt2.setInt(5, pizza_order.getPizza_option());

			return pstmt2.executeUpdate();

		} catch (Exception e) {
			return 0;
		}
	}

	@Override
	public List<PizzaOrder> getAllOrder() {
		
		List<PizzaOrder> allOrder = new ArrayList<>();
		
		String sql = "SELECT * FROM PIZZA_ORDER";
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		) {
			
			while (rs.next()) {
				PizzaOrder pizza_order = new PizzaOrder();
				
				pizza_order.setOrder_id(rs.getString("order_id"));
				pizza_order.setCustomer_id(rs.getString("customer_id"));
				pizza_order.setPizza_id(rs.getString("pizza_id"));
				pizza_order.setAddress(rs.getString("address"));
				pizza_order.setPizza_option(rs.getInt("pizza_option"));
				
				allOrder.add(pizza_order);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return allOrder;
	}
}