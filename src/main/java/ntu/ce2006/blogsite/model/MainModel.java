package ntu.ce2006.blogsite.model;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

/**
 * @author mitali
 *
 * Just a regular java class that contains any application logic. Such classes can interact with databases or
 * file system and return the data after processing back to the controller which in turn will send to the UI
 * or depending on the controller type will return raw data as JSON
 * 
 * @Component is a generic stereotype for any Spring-managed component
 */

@Component //to make SB manage the life cycle of the objects of this class => no need to instantiate to call the methods
public class MainModel {
	
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
		
		if(uid == null || pwd == null) {
			return false;
		}
		if(uid.contentEquals("admin") && pwd.contentEquals("1234")) {
			return true;
		}
		
		return false;
	}

}



