package ntu.ce2006.blogsite.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ntu.ce2006.blogsite.entity.ExchangeRate;
import ntu.ce2006.blogsite.entity.Product;
import ntu.ce2006.blogsite.model.MainModel;


/**
 * @author mitali
 * A controller accepts all requests from the browser and maps the specific URI to specific methods for processing.
 * 
 * This is a rest controller and will always return json
 * 
 * JSON can be rendered by any UI framework like ReactJS/jQuery/Plotly etc and by apps running on mobile devices
 */

@RestController
public class ControllerRest {
	
	@Autowired
	private MainModel mainModel;

	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public List<Product> products(Map<String, Object> model) {
		System.out.println("Request from browser recieved. will return raw data as json");
	
		//SB will auto convert java list object to JSON and send the response
		return mainModel.getProducts();
	}
	
	
	@RequestMapping(value = "/rates", method = RequestMethod.GET)
	public List<ExchangeRate> rates(Map<String, Object> model) {
		System.out.println("Request from browser recieved. will return raw data as json");
	
		//SB will auto convert java list object to JSON and send the response
		return mainModel.getRates();
	}

}
