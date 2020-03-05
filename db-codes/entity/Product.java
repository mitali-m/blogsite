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
	private String productVersion;
	private double productPrice;
	private int stock;

	
	public Product(String id, String productName, String productVersion, double productPrice, int stock) {
		this.id = id;
		this.productName = productName;
		this.productVersion = productVersion;
		this.productPrice = productPrice;
		this.stock = stock;
	}
	
	public String getProductVersion() {
		return productVersion;
	}

	public void setProductVersion(String productVersion) {
		this.productVersion = productVersion;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
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
		return productVersion;
	}

	public void setProductDescription(String productDescription) {
		this.productVersion = productDescription;
	}
	
}
