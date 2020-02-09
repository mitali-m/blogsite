package ntu.ce2006.blogsite.entity;

/**
 * @author mitali
 * 
 * This is a regular java bean AKA entity. These classes represent objects of real life entities.
 *
 */

public class Product {

	private String id;
	private String productName;
	private String productDescription;
	private double productPrice;

	
	public Product(String id, String productName, String productDescription, double productPrice) {
		this.id = id;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public double getProductPrice() {
		return productPrice;
	}
	
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
}
