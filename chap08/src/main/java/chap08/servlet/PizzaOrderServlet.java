package chap08.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.model.PizzaOrder;

public class PizzaOrderServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		
		try (
				Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE"
						, "testuser", "1234");
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM PIZZA_ORDER");
				ResultSet rs = pstmt.executeQuery();
		) {
			// 제네릭을 지정하지 않아도 JSTL에서 활용이 가능하다.
			List orders = new ArrayList();
			
			request.setAttribute("orders", orders);

			while (rs.next()) {
				PizzaOrder order = new PizzaOrder();
				order.setOrder_id(rs.getString("order_id"));
				order.setCustomer_id(rs.getString("customer_id"));
				order.setPizza_id(rs.getString("pizza_id"));
				order.setAddress(rs.getString("address"));
				order.setPizza_option(rs.getInt("pizza_option"));
				
				orders.add(order);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/quiz/order_list.jsp").forward(request, response);
		
		
	}
}
