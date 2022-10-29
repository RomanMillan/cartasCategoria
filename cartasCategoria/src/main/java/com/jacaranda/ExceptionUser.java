package com.jacaranda;

public class ExceptionUser extends Exception {

	public ExceptionUser() {
		super();
		
	}

	public ExceptionUser(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public ExceptionUser(String message, Throwable cause) {
		super(message, cause);
		
	}

	public ExceptionUser(String message) {
		super(message);
		
	}

	public ExceptionUser(Throwable cause) {
		super(cause);
		
	}
	
}
