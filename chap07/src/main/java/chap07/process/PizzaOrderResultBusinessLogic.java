package chap07.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO;
import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.PizzaOrder;

public class PizzaOrderResultBusinessLogic implements BusinessLogic {
	
	PizzaOrderDAO dao = new PizzaOrderDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		List<PizzaOrder> pizza_orders = dao.getCustomerOrders(request.getParameter("order_id"));
		
		request.setAttribute("pizza_orders", pizza_orders);
		
		request.setAttribute("customer_id", pizza_orders.get(0).getCustomer_id());
		
		return "/pizza/order/result";
	}

}