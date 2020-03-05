package ntu.ce2006.blogsite.entity;

/**
 * @author mitali
 * 
 * This is a regular java bean AKA entity. These classes represent objects of real life entities.
 *
 */

public class ExchangeRate {

	private int id;
	private String rateDate;
	private double rate;
	
	public ExchangeRate(int id, String rateDate, double rate) {
		this.id = id;
		this.rateDate = rateDate;
		this.rate = rate;
	}

	
	public int getId() {
		return id;
	}

	
	public void setId(int id) {
		this.id = id;
	}

	
	public String getRateDate() {
		return rateDate;
	}

	
	public void setRateDate(String rateDate) {
		this.rateDate = rateDate;
	}

	
	public double getRate() {
		return rate;
	}

	
	public void setRate(double rate) {
		this.rate = rate;
	}
}




