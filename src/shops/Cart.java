package shops;

import java.util.ArrayList;

public class Cart {
	 private String productName;
	 private int quanntity;
	 private float rate;
	 private float amount;
	 
	 public Cart() {
		 
	 }
	 
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQuanntity() {
		return quanntity;
	}
	public void setQuanntity(int quanntity) {
		this.quanntity = quanntity;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	public float getAmount() {
		return rate* quanntity;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	 
	 
	   
}
