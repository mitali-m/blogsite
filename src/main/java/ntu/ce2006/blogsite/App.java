package ntu.ce2006.blogsite;

import java.util.Arrays;
import java.util.logging.Logger;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import ntu.ce2006.blogsite.App;

/**
 * @author mitali
 *
 */

//This is the main entry point of the application just like a regular java program, except that it starts the web server
//tells the java that this is a web app and needs to start the tomcat
@SpringBootApplication		//Standard spring boot application annotation. 
public class App extends SpringBootServletInitializer {
	
	private static final boolean verbose = false;
	private static final Logger logger = Logger.getLogger(App.class.getName());
	
	
	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
		//automatically scans the whole package
		//org.apache.jasper.servlet.TldScanner --> scans and finds out the controllers and views
	}
	
	
	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return args -> {
			logger.info("Listing the beans provided by Spring Boot");
			String[] beanNames = ctx.getBeanDefinitionNames();
			Arrays.sort(beanNames);
			for(String name : beanNames) {
				if(verbose) logger.info(name);
			}
			logger.info("All initializations completed. App started.");
		};
	}

}
