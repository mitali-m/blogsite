package ntu.ce2006.flipbasket.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import ntu.ce2006.flipbasket.entity.Product;

/**
 * @author mitali
 *
 * Just a regular java class that contains any application logic. Such classes can interact with databases or
 * file system and return the data after processing back to the controller which in turn will send to the UI
 * or depending on the controller type will return raw data as JSON
 */
public class MainModel {
	public List<Product> getProducts() {
		//Here we can connect to a database using standard JDBC and return a collection of records
		List<Product> products = new ArrayList<Product>();
		products.add(new Product("prod1", "TV", "Samsung 55 inch TV", 1000));
		products.add(new Product("prod2", "Laptop", "Dell Precision 7500", 5000));
		products.add(new Product("prod3", "Mobile", "Apple XI", 10));
		
		return products;
	}
	
	
	public boolean saveUser(String emailId, String fullname) {
		//We can write biz logic to act on the form data submitted by the user in the UI
		System.out.format("Received the email [%s] and name [%s] from the user.", emailId, fullname);

		//StringUtils is a 3rd party library which is easily available to you by including the POM dependency
		//It saves us the effort of checking for null strings cause nullpointer exception
		if(StringUtils.isEmpty(emailId) || StringUtils.isEmpty(fullname)) return false;
		return true;
	}
	
	
	public boolean adminLogIn(String uid, String pwd) {
		System.out.println("Recieved admin log in details as uid " + uid + " and pwd" + pwd);
		
		if(uid.contentEquals("admin") && pwd.contentEquals("1234")) {
			return true;
		}
		
		return false;
	}

}
