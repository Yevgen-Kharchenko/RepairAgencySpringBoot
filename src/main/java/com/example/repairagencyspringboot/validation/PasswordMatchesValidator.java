package com.example.repairagencyspringboot.validation;

import com.example.repairagencyspringboot.form.RegistrationForm;
import com.example.repairagencyspringboot.validation.annotation.PasswordMatcher;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatcher, RegistrationForm> {
    @Override
    public boolean isValid(RegistrationForm form, ConstraintValidatorContext constraintValidatorContext) {
        if(form.getPassword() == null || form.getPassword_confirm() == null){
            return true;
        }
        return form.getPassword().equals(form.getPassword_confirm());
    }
}
