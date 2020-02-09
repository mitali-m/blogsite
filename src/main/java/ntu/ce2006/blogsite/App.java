package ntu.ce2006.blogsite;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * @author mitali
 *
 */

//This is the main entry point of the application just like a regular java program, except that it starts the web server
//tells the java that this is a web app and needs to start the tomcat
@SpringBootApplication		//Standard spring boot application annotation. 
public class App extends SpringBootServletInitializer {
	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
		//automatically scans the whole package
		//org.apache.jasper.servlet.TldScanner --> scans and finds out the controllers and views
	}
	
}
