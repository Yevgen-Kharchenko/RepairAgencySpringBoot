package com.example.repairagencyspringboot.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class EntityNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 7595625433016740607L;

	public EntityNotFoundException(String arg0) {
		super(arg0);
	}

}
