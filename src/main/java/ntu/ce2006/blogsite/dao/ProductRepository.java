package ntu.ce2006.blogsite.dao;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ntu.ce2006.blogsite.entity.Product;

/**
 * 
 * @author mitali
 * 
 * A repository is the main interface between the database and the business layer (aka model) of the application.
 * The prime responsibility of the repository is to fire SQLs and convert the responses (of select SQLs) to entities.
 * This will ensure separation of database logic (represented in SQL) from business logic (represented in Java)
 * 
 * Another side benefit of this separation is if the database changes from MySQL to anything else, only the
 * repository class will need to change and no business logic gets impacted. The principle design pattern at play
 * here is called as the "DAO - Data Access Objects"! 
 * 
 * @Repository annotates classes at the persistence layer, which will act as a database repository
 * @Service and @Repository are special cases of @Component. They are technically the same but we use them
 * for the different purposes
 * 
 * Circuit breaker is an important pattern, it reroutes requests to an alternate method in case of failure
 * Docs here - https://spring.io/guides/gs/circuit-breaker/
 * 
 */

@Repository
public class ProductRepository {

	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	private static final Logger logger = Logger.getLogger(ProductRepository.class.getName());
	

	/**
	 * This is a typical naming convention for a repository class.
	 * Do note if there is a DB failure, this method will throw an exception. If the exception is thrown then we
	 * cannot respond with a list of values and the consumer of this class which will be typically the model will
	 * have to handle that exception in a try/catch block.
	 * 
	 * Alternatively you can handle this exception here in a try/catch block which can lead to very verbose code!
	 * So the question is "How to NOT have any try/catch" and yet be able to handle the exception?
	 * Answer -> use circuit breaker pattern, it is provided by Hystrix (by Netflix)
	 * 
	 * @return a list of products
	 */
	public List<Product> findall() {
		logger.info("Product repository findall function invoked.");
		List<Product> result = jdbcTemplate.query(
				"select id as id, name as productName, description as productDescription, price as productPrice " +
				"from ecomm.products order by id", 
				(row, rowNum) -> new Product(row.getString("id"), row.getString("productName"),
											 row.getString("productDescription"), row.getDouble("productPrice"))
		);
		
		return result;
	}
	
	
	//Another method could be findById() and so on!
	
}
