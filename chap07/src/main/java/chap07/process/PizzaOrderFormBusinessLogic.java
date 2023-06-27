package chap07.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.dao.PizzaOrderDAO;
import chap07.dao.PizzaOrderDAO_Impl;
import chap07.model.PizzaOrder;

public class PizzaOrderFormBusinessLogic implements BusinessLogic {

	PizzaOrderDAO dao = new PizzaOrderDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// 이 사람이 로그인 중인가?
//		if (request.getSession().getAttribute("user") == null) {
//			return "redirect:/index";
//		}
		
		// 고를 수 있는 모든 피자들의 정보를 DB에서 가져와야 한다.
		request.setAttribute("pizzas", dao.getAllPizza());
		
		// 로그인 중이라면 폼으로 안내
		return "/pizza/order_form";
	}

}
