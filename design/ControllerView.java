package ntu.ce2006.flipbasket.controller;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ntu.ce2006.flipbasket.entity.Product;
import ntu.ce2006.flipbasket.model.MainModel;


/**
 * @author mitali
 * A controller accepts all requests from the browser and maps the specific URI to specific methods for processing.
 * 
 * A controller method can do two things - refresh the whole page OR send only the raw data as JSON
 * In order for the whole page to refresh the return should be the JSP name
 * If only the data as json is to be returned then use another controller and annotate as restcontroller
 * 
 */

@Controller
public class ControllerView {
	
	//In SB dependency injection must be used all the way from controller otherwise auto wiring will NOT work
	@Autowired
	private MainModel mainModel;

	
	//The request mapping is actually the URI that comes from the browser.
	//You can have multiple request methods ie. both get and post
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage(Map<String, Object> model) {
		model.put("time", new Date());
		System.out.println("Request from browser recieved. sending to index.jsp");
		return "index";		//Look at the application.properties for the suffix and prefix
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Map<String, Object> model) {
		System.out.println("Request from browser recieved. sending to home.jsp");
		model.put("time", new Date());
		return "home";
	}

	
	//This method maps to the html form submit action for both get and post
	@RequestMapping(value = "/saveuser", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveUserForm(Map<String, Object> model,
								 //The HTML form attributes are easily mapped to variables
			                     @RequestParam(value="email",required=true) String emailId,
			                     @RequestParam(value="name",required=true) String fullname
								) {
		System.out.println("Form submit from browser recieved.");
		//Passing the form data for processing. Notice the model creation is not needed, SB will manage!
		boolean resp = mainModel.saveUser(emailId, fullname);
		model.put("success", resp);
		return "home";
	}
	
	
	@GetMapping("/product/{id}")
	public String showProduct(Model model) {
		System.out.println("In show product controller");
		model.addAttribute("formProduct", new Product());
		return "products";
	}
	
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
    public String submit(@Validated @ModelAttribute("formProduct") Product product, BindingResult result, ModelMap model) {
		System.out.println("The product information is received as follows\n" + product.toString());
		if (result.hasErrors()) {
			System.out.println("The form submission was incorrect!");
			model.put("status", "Some fields are incorrect, please fix and resubmit!");
        } else {
        	//The saving of the object will go here and the clear out the object
        	System.out.println("Clearing out the object contents after the save is successful");
        	model.put("status", "Record saved!");
        	product.initObject();
        }
        return "products";
    }

}
