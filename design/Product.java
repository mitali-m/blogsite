package ntu.ce2006.flipbasket.entity;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.apache.commons.lang.StringUtils;

/**
 * @author mitali
 *
 */

public class Product {

	//The validation messages are not being in the UI
	@NotEmpty(message = "Please provide the product ID")
	private String id;
	@NotEmpty(message = "Please provide the name")
	private String productName;
	@NotEmpty(message = "Please provide the description")
	private String productDescription;
	@NotNull(message = "Please provide the price")
    private Double productPrice;
	

	public Product() {
		this.initObject();
	}
	
	public Product(String id, String productName, String productDescription, double productPrice) {
		this.id = id;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}
	
	public void initObject() {
		this.id = this.productName = this.productDescription = StringUtils.EMPTY;
		this.productPrice = 0.0;
	}
	
	public String toString() {
		return String.format("ID:%s\nName:%s\nDescription:%s\nPrice:%.2f\n", id, productName, productDescription, productPrice);
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
