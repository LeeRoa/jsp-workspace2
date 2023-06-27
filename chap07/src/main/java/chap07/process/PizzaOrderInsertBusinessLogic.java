package chap07.process;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO;
import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.PizzaOrder;

public class PizzaOrderInsertBusinessLogic implements BusinessLogic {

	PizzaOrderDAO dao = new PizzaOrderDAO_Impl();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String customer_id = request.getParameter("customer_id");
		String pizza_id = request.getParameter("pizza_id");
		String address = request.getParameter("address");
		String pizza_option = request.getParameter("pizza_option");
		
		// 전달받은 파라미터에 잘못된 값이 있으면 다시 입력하도록 만들기
		if (pizza_id == null || pizza_id.trim().equals("")
				|| customer_id == null || customer_id.trim().equals("")
				|| address == null || address.trim().equals("")
				|| pizza_option == null || pizza_option.trim().equals("")) {
			
			return "redirect:" + request.getContextPath() + "/pizza/order";
		}

		
		// DB에 insert 진행
		PizzaOrder pizza_order = new PizzaOrder();
		pizza_order.setCustomer_id(customer_id);
		pizza_order.setPizza_id(pizza_id);
		pizza_order.setAddress(address);
		pizza_order.setPizza_option(Integer.parseInt(pizza_option));
		
		int row = dao.insertOrder(pizza_order);
		
		if (row > 0) {
			
			return "redirect:" + request.getContextPath() + 
					"/pizza/order/result?order_id=" + pizza_order.getOrder_id();
			
		} else {
			return "redirect:" + request.getContextPath() + "/pizza/order";
		}

//		if (customer_id != null || pizza_id != null || address != null) {
//			pizza_order.setCustomer_id(customer_id);
//			pizza_order.setPizza_id(pizza_id);
//			pizza_order.setAddress(address);
//			
//			if (pizza_option != null) {
//				pizza_order.setOption(Integer.parseInt(pizza_option));
//			} else {
//				pizza_order.setOption(000);
//			}
//			
//			request.setAttribute("pizza_order", pizza_order);
//			
//			dao.newOrder(pizza_order);
//			
//			return "/pizza/order_result";
//		} else {
//			
//			return "/pizza/order_failed";
//		}
		
	}
}

