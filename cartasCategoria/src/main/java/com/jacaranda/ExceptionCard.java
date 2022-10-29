package com.jacaranda;

public class ExceptionCard extends Exception {

	public ExceptionCard() {
		super();
		
	}

	public ExceptionCard(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public ExceptionCard(String message, Throwable cause) {
		super(message, cause);
		
	}

	public ExceptionCard(String message) {
		super(message);
		
	}

	public ExceptionCard(Throwable cause) {
		super(cause);
		
	}
	
}
