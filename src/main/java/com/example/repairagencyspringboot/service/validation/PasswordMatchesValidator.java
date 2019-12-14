package com.example.repairagencyspringboot.service.validation;

import com.example.repairagencyspringboot.controller.dto.RegistrationForm;
import com.example.repairagencyspringboot.service.validation.annotation.PasswordMatcher;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatcher, RegistrationForm> {

    @Override
    public boolean isValid(RegistrationForm form, ConstraintValidatorContext constraintValidatorContext) {
        if (form.getPassword() == null || form.getPassword_confirm() == null) {
            return true;
        }
        return form.getPassword().equals(form.getPassword_confirm());
    }
}
