<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>피자 토핑</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Indie+Flower&family=Manrope&display=swap')
	;
</style>
<link rel="stylesheet" href="./pizza.css" />
</head>
<body>

	<div id="pizza-form">
		<div id="top-div">
			<div id="pizza"></div>
			<div id="order-form"></div>
			<div id="pizza-detail">
				<form action="http://localhost:8090/chap02/pizza/pizza.jsp" id="top-form">
					<div>
						<input type="radio" id="crust-btn" name="show" value="crust" checked /> 
						<label for="crust-btn">
							<img src="./image/crust.jpg" alt="크러스트" id="crust-label" />
						</label> 
					</div>
					<div>
						<input type="radio" id="sauce-btn" name="show" value="sauce" /> 
						<label for="sauce-btn">
							<img src="./image/topping.jpg" alt="" id="sauce-label" />
						</label> 
					</div>
					<div>
						<input type="radio" id="cheese-btn" name="show" value="cheese" />
						<label for="cheese-btn">
							<img src="./image/cheese.jpg" alt="" id="cheese-label" />
						</label>					
					</div>
				</form>
			</div>
		</div>
		<div id="bottom-div">
			<form action="http://localhost:8090/chap02/pizza/pizzaOrder.jsp" id="choices">
				<div id="crust">
					<div id="crust-title">Crust Choices :</div>
					<div id="crust-chioces">
	
						<div>
							<img class="crust-image" src="./image/thin_crust.jpg" alt="" />
							<label for="thin-crust">thin</label>
							<input type="radio" id="thin-crust"
								name="crust" value="thin" checked>
						</div>
	
						<div>
							<img class="crust-image" src="./image/thin_crust.jpg" alt="" />
							<label for="thick-crust">thick</label>
							<input type="radio" id="thick-crust"
								name="crust" value="thick">
						</div>
	
						<div>
							<img class="crust-image" src="./image/thin_crust.jpg" alt="" />
							<label for="glute-free-crust">gluten-free</label>
							<input type="radio" id="glute-free-crust"
								name="crust" value="gluten-free">
						</div>
					</div>
				</div>
				<div id="topping">
					<div id="topping-title">Topping Choices :</div>
					<div id="topping-chioces">
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="pepperoni">Pepperoni</label>
							<input type="checkbox" id="pepperoni" name="topping" value="pepperoni">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="xtra-cheese">Xtra Cheese</label>
							<input type="checkbox" id="xtra-cheese" name="topping" value="xtra-cheese">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="ham">Ham</label>
							<input type="checkbox" id="ham" name="topping" value="ham">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="pineapple">Pineapple</label>
							<input type="checkbox" id="pineapple" name="topping" value="pineapple">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="onion">Onion</label>
							<input type="checkbox" id="onion" name="topping" value="onion">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="bacon">Bacon</label>
							<input type="checkbox" id="bacon" name="topping" value="bacon">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="sausage">Sausage</label>
							<input type="checkbox" id="sausage" name="topping" value="sausage">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="olives">Olives</label>
							<input type="checkbox" id="olives" name="topping" value="olives">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="peppers">Peppers</label>
							<input type="checkbox" id="peppers" name="topping" value="peppers">
						</div>
						<div>
							<img class="topping-image" src="./image/thin_crust.jpg" alt="" />
							<label for="mushrooms">Mushrooms</label>
							<input type="checkbox" id="mushrooms" name="topping" value="mushrooms">
						</div>
					</div>
				</div>
				<div id="cheese">
					<div id="cheese-title">Cheese Choices :</div>
					<div id="cheese-chioces">
						<div>
							<img class="cheese-image" src="./image/thin_crust.jpg" alt="" />
							<label for="mozzarella">Mozzarella</label>
							<input type="radio" id="mozzarella" name="cheese" value="mozzarella" checked>
						</div>
						<div>
							<img class="cheese-image" src="./image/thin_crust.jpg" alt="" />
							<label for="cheddar">Cheddar</label>
							<input type="radio" id="cheddar" name="cheese" value="cheddar">
						</div>
						<div>
							<img class="cheese-image" src="./image/thin_crust.jpg" alt="" />
							<label for="parmesan">Parmesan</label>
							<input type="radio" id="parmesan" name="cheese" value="parmesan">
						</div>
					</div>
				<input type="submit" />
				</div>
			</form>
		</div>
	</div>

	<script src="./pizza.js"></script>

</body>
</html>