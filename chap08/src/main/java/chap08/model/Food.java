package chap08.model;

public class Food {
	String food_id;
	String display_name;
	String food_type;

	public Food(String food_id, String food_type, String display_name) {
		this.food_id = food_id;
		this.food_type = food_type;
		this.display_name = display_name;
	}
	
	public String getFood_id() {
		return food_id;
	}
	public void setFood_id(String food_id) {
		this.food_id = food_id;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getFood_type() {
		return food_type;
	}
	public void setFood_type(String food_type) {
		this.food_type = food_type;
	}
}
