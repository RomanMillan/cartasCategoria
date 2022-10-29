package com.jacaranda;

public class ExceptionCategory extends Exception {

	public ExceptionCategory() {
		super();
		
	}

	public ExceptionCategory(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public ExceptionCategory(String message, Throwable cause) {
		super(message, cause);
		
	}

	public ExceptionCategory(String message) {
		super(message);
		
	}

	public ExceptionCategory(Throwable cause) {
		super(cause);
	
	}
	
}
