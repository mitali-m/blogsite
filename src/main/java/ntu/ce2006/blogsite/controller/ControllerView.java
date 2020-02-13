package ntu.ce2006.blogsite.controller;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ntu.ce2006.blogsite.model.MainModel;


/**
 * @author mitali
 * A controller accepts all requests from the browser and maps the specific URI to specific methods for processing.
 * 
 * A controller method can do two things - refresh the whole page OR send only the raw data as JSON
 * In order for the whole page to refresh the return should be the JSP name
 * If only the data as json is to be returned then use another controller and annotate as restcontroller
 */

@Controller
public class ControllerView {
	
	//dependency injection
	@Autowired
	private MainModel mainModel;

	
	/** 
	 * @param modelData
	 * @return
	 * 
	 * The request mapping is actually the URI(uniform resource identifier -> http://www.website.com/uri) that
	 * comes from the browser. You can have multiple request methods ie. both get and post
	 * 
	 * The method argument "modelData" (name does not matter) is automatically provided by SB so that the controller
	 * can call the model, get the response and put it in modelData. Subsequently it will be passed on to the UI (jsp)
	 * for using the data to generate the UI (html) which will be sent back to the browser for rendering
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage(Map<String, Object> modelData) {
		modelData.put("time", new Date());
		System.out.println("Request from browser recieved. sending to index.jsp");
		return "index";		//Look at the application.properties for the suffix and prefix
	}
	
	
	//Variable modelData can carry values from the controller to the view
	//Controller will populate the modelData based on the return value from MainModel
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Map<String, Object> modelData) {
		System.out.println("Request from browser recieved. sending to home.jsp");
		modelData.put("time", new Date());
		return "home";
	}

	
	//This method maps to the html form submit action for both get and post	
	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLogIn(Map<String,Object> modelData,
								//The HTML form attributes are easily mapped to variables
								@RequestParam(value="uid", required=true) String uid,
								@RequestParam(value="pwd", required=true) String pwd
								) {
		System.out.println("Login form recieved from browser.");
		//Creating the model and passing the form data for processing
		boolean loginResult = mainModel.adminLogIn(uid, pwd); //the autowired one defined on the top is used here
		modelData.put("time", new Date());
		if(loginResult) {
			return "home";
		} else {
			modelData.put("success", loginResult);
			return "index";
		}
		
	}
	
	
	@RequestMapping(value = "/createuser", method = RequestMethod.POST)
	public String createUser(Map<String,Object> model, @RequestParam Map<String,String> formFields) {
		model.put("time", new Date());
		formFields.entrySet().forEach(entry->{
			System.out.println(entry.getKey() + " " + entry.getValue());  
		 });
		return "home";
		
	}

}
