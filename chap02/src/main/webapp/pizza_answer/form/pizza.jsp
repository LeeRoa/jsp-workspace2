<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Personalized Pizza Order</title>
<link rel="stylesheet" href="../assets/css/pizza.css" />
</head>
<body>

	<div id="main">
		<div id="header">
			<div>image</div>
			<div>main-logo</div>
			<div>sub-logo</div>
		</div>
		<div id="select">
			<div class="image option-btns">image1</div>
			<div class="plus">+</div>
			<div class="image option-btns">image2</div>
			<div class="plus">+</div>
			<div class="image option-btns">image3</div>
			<div class="text">text1</div>
			<div class="space"></div>
			<div class="text">text2</div>
			<div class="space"></div>
			<div class="text">text3</div>
		</div>
		<div>
			<div><hr></div>
			
			<div class="options">
				<div class="name">Crust Choices: </div>
				<div class="image">image1</div>
				<div class="image">image2</div>
				<div class="image">image3</div>
				<div class="image">image4</div>
				<div class="image"></div>
				<div class="text">text1</div>
				<div class="text">text2</div>
				<div class="text">text3</div>
				<div class="text">text4</div>
				<div class="text"></div>
				<div class="checkbox">
					<input type="checkbox" name="crust" value="normal" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" name="crust" value="thin" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" name="crust" value="gluten-free" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
				</div>

				<div class="image"></div>
				<div class="image"></div>
				<div class="image"></div>
				<div class="image"></div>
				<div class="image"></div>
				<div class="text"></div>
				<div class="text"></div>
				<div class="text"></div>
				<div class="text"></div>
				<div class="text"></div>
				<div class="checkbox">
					
				</div>
				<div class="checkbox">
				
				</div>
				<div class="checkbox">
			
				</div>
				<div class="checkbox">
			
				</div>
				<div class="checkbox">
	
				</div>
			</div>
			<div class="options">
				<div class="name">Topping Choices: </div>
				<div class="image">image1</div>
				<div class="image">image2</div>
				<div class="image">image3</div>
				<div class="image">image4</div>
				<div class="image">image5</div>
				<div class="text">text1</div>
				<div class="text">text2</div>
				<div class="text">text3</div>
				<div class="text">text4</div>
				<div class="text">text5</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>

				<div class="image">image1</div>
				<div class="image">image2</div>
				<div class="image">image3</div>
				<div class="image">image4</div>
				<div class="image">image5</div>
				<div class="text">text1</div>
				<div class="text">text2</div>
				<div class="text">text3</div>
				<div class="text">text4</div>
				<div class="text">text5</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
				<div class="checkbox">
					<input type="checkbox" form="order"/>
				</div>
			</div>
			<div class="options">
				<div class="name">Cheese Choices: </div>
				<div class="image">image1</div>
				<div class="image">image2</div>
				<div class="image">image3</div>
				<div class="image">image4</div>
				<div class="image">image5</div>
				<div class="text">text1</div>
				<div class="text">text2</div>
				<div class="text">text3</div>
				<div class="text">text4</div>
				<div class="text">text5</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>

				<div class="image">image1</div>
				<div class="image">image2</div>
				<div class="image">image3</div>
				<div class="image">image4</div>
				<div class="image">image5</div>
				<div class="text">text1</div>
				<div class="text">text2</div>
				<div class="text">text3</div>
				<div class="text">text4</div>
				<div class="text">text5</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
				<div class="checkbox">
					<input type="checkbox" />
				</div>
			</div>
		</div>
	</div>
	
	<form id="order" action="/abc" method="GET">
		<input type="submit" value="주문하기"/>
	</form>
	<script src="../assets/js/pizza.js"></script>
</body>
</html>