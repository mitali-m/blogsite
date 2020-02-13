package ntu.ce2006.blogsite.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

import ntu.ce2006.blogsite.entity.ExchangeRate;

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
public class RateRepository {

	/**
	 * The JdbcTemplate will manage the DB connection pooling, connection release etc. Otherwise we have to manually
	 * load the JDBC driver, manage multiple connections (pool), ensure that we release the connections once done else
	 * the DB will run out of connections.
	 */
	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	private static final Logger logger = Logger.getLogger(RateRepository.class.getName());
	

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
	@HystrixCommand(fallbackMethod = "findAllFallback")
	public List<ExchangeRate> findall() {
		logger.info("Rate repository findall function invoked.");
		List<ExchangeRate> result = jdbcTemplate.query(
				"select id, rate_date as rateDate, rate" +
				" from exchange_rate.daily_rate order by id", 
				(row, rowNum) -> new ExchangeRate(row.getInt("id"), row.getString("rateDate"), row.getDouble("rate"))
		);
		
		return result;
	}
	
	
	//This is the failover method and should accept the same arguments as the original method (if it had)
	public List<ExchangeRate> findAllFallback() {
		logger.info("Circuit broken: RateRepository.findAllFallback");
		List<ExchangeRate> rates = new ArrayList<ExchangeRate>();
		rates.add(new ExchangeRate(1, "-", 0.00));
		
		return rates;
	}
	
	
	//Another method could be findById() and so on!
	
}
