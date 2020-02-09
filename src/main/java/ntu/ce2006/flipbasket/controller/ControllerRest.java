package ntu.ce2006.flipbasket.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ntu.ce2006.flipbasket.entity.Product;
import ntu.ce2006.flipbasket.model.MainModel;


/**
 * @author mitali
 * A controller accepts all requests from the browser and maps the specific URI to specific methods for processing.
 * 
 * This is a rest controller and will always return json
 * 
 * JSON is rendered by any UI framework like ReactJS etc and mobile devices
 */

@RestController
public class ControllerRest {

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public List<Product> products(Map<String, Object> model) {
		System.out.println("Request from browser recieved. will return raw data as json");
		MainModel bizmodel = new MainModel();
		
		//SB will auto convert java list object to JSON and send the response
		return bizmodel.getProducts();
	}

}
