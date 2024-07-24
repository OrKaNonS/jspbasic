package jspbasic;

public class Car{
	private int sno;
	private String mf;
	private String model;
	private int cc;
	private String color;
	private int price;
		
	
	public Car() {
	}


	public int getNo() {
		return sno;
	}


	public void setNo(int no) {
		this.sno = no;
	}


	public String getMf() {
		return mf;
	}


	public void setMf(String mf) {
		this.mf = mf;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public int getCc() {
		return cc;
	}


	public void setCc(int cc) {
		this.cc = cc;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "Car [no=" + sno + ", mf=" + mf + ", model=" + model + ", cc=" + cc + ", color=" + color + ", price="
				+ price + "]";
	}


	public Car(int no, String mf, String model, int cc, String color, int price) {
		super();
		this.sno = no;
		this.mf = mf;
		this.model = model;
		this.cc = cc;
		this.color = color;
		this.price = price;
	}
	
}
